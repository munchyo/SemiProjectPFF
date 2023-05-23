package semi.proj.PfF.order.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.siot.IamportRestClient.IamportClient;
import com.siot.IamportRestClient.exception.IamportResponseException;
import com.siot.IamportRestClient.response.IamportResponse;
import com.siot.IamportRestClient.response.Payment;

import semi.proj.PfF.member.model.vo.Member;
import semi.proj.PfF.order.model.vo.Coupon;
import semi.proj.PfF.order.model.vo.Order;
import semi.proj.PfF.order.model.vo.OrderProduct;
import semi.proj.PfF.order.service.OrderService;
import semi.proj.PfF.product.model.vo.Product;

@Controller
public class OrderController {
	
	private IamportClient api;
	@Autowired
	private OrderService oService;
	
	public OrderController() {
		this.api = new IamportClient("5261363133676612", "OPSJjueLH9082g7bOolj9JKnAM8yb724xKQEPZNttT8dCzv19y70XJ7AaRIpn04rwihZsXbkVdeavBVd");
	}
	
	@ResponseBody
	@RequestMapping("verifyIamport/{imp_uid}.pay")
	public IamportResponse<Payment> paymentByImpUid(@PathVariable("imp_uid") String imp_uid) throws IamportResponseException, IOException {
		return api.paymentByImpUid(imp_uid);
	}
	
	@RequestMapping("paymentView.pay")
	public String paymentView(HttpSession session, Model model) {
		Member loginUser = new Member();
		loginUser.setMemberNo(1);
		loginUser.setMemberId("user01");
		loginUser.setMemberPwd("pass01");
		loginUser.setMemberName("강건강");
		loginUser.setMemberEmail("kljfdslkfjsdkl@naver.com");
		loginUser.setMemberPhone("010-1234-5678");
		loginUser.setMemberAddress("경기 고양시 성사동 경부고속도로 409 (삼평동) ㅇㅇ아파트 ㅇㅇ동 ㅇㅇ호");
		loginUser.setPoint(1000000);
		loginUser.setGrade("VIP");
		session.setAttribute("loginUser", loginUser);
		
		ArrayList<Product> productList = new ArrayList<Product>();
		Product product1 = new Product();
		product1.setProductNo(1);
		product1.setProductName("달콤한 코트");
		product1.setProductPrice(120000);
		product1.setDiscountRate(20);
		productList.add(product1);
		
		Product product2 = new Product();
		product2.setProductNo(2);
		product2.setProductName("뜨거운 바지");
		product2.setProductPrice(50000);
		product2.setDiscountRate(0);
		productList.add(product2);
		
		Product product3 = new Product();
		product3.setProductNo(3);
		product3.setProductName("이상한 신발");
		product3.setProductPrice(30000);
		product3.setDiscountRate(0);
		productList.add(product3);
		
		model.addAttribute("productList", productList);
//		model.addAttribute("size", new String[] {"S"});
//		model.addAttribute("count", new int[] {1});
		model.addAttribute("size", new String[] {"S", "M", "XL"});
		model.addAttribute("count", new int[] {1, 2, 3});
		
		return "payment";
	}
	
	@ResponseBody
	@RequestMapping("insertOrder.pay")
	public long insertOrder(@ModelAttribute Order order, @RequestParam("productInfo") String productInfo, @RequestParam("couponNo") int couponNo) {
//		System.out.println(order);
//		System.out.println(productInfo);
		String[] productArr = productInfo.split("&");
		ArrayList<OrderProduct> opList = new ArrayList<OrderProduct>();
		for(String product : productArr) {
//			System.out.println(product);
			String[] element = product.split("/");
			OrderProduct op = new OrderProduct(Integer.parseInt(element[0]), Integer.parseInt(element[1]), element[2], order.getOrderNo());
			opList.add(op);
		}
//		System.out.println(opList);
		
//		System.out.println(couponNo);
		if(couponNo != 0) {
			oService.useCoupon(couponNo);
		}
		
		int oResult = oService.insertOrder(order);
		int opResult = oService.insertOrderProduct(opList);
		
		if(oResult > 0 && opResult > 0) {
			return order.getOrderNo();
		}
		return 0;
	}
	
	@RequestMapping("payCompleteView.pay")
	public String payCompleteView(@RequestParam("orderNo") long orderNo, Model model, HttpSession session) {
//		System.out.println(orderNo);
		Order order = oService.selectOrder(orderNo);
		ArrayList<OrderProduct> opList = oService.selectOrderProduct(orderNo);
//		System.out.println(order);
//		System.out.println(opList);
		if(order != null && opList != null) {
			model.addAttribute("order", order);
			model.addAttribute("opList", opList);
			model.addAttribute("loginUser", (Member)session.getAttribute("loginUser"));
			
			return "paymentComplete";
		}
		return null;
	}
	
	@GetMapping("coupon.pay")
	public String couponView(HttpSession session, Model model) {
		int memNo = ((Member)session.getAttribute("loginUser")).getMemberNo();
		ArrayList<Coupon> couponList = oService.selectCoupon(memNo);
		model.addAttribute("list", couponList);
		return "coupon";
	}
}

