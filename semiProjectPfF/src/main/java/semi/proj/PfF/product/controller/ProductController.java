package semi.proj.PfF.product.controller;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

import semi.proj.PfF.common.Pagination;
import semi.proj.PfF.common.model.vo.PageInfo;
import semi.proj.PfF.product.model.service.ProductService;
import semi.proj.PfF.product.model.vo.Product;

@Controller
public class ProductController {

	@Autowired
	ProductService pService;
	
	@GetMapping(".pr")
	public String productList(@RequestParam(value="page", required=false) Integer currentPage, @RequestParam("productType") String productType, Model model) {
		if(currentPage == null) {
			currentPage = 1;
		}
		
		ArrayList<Product> productList = pService.selectPrTypeList(productType);// ��ǰ �� ����, ��ǰ type2, ��ǥ����, productName, productPrice Ȱ�밡��
		// ��ǰŸ��2�� �ߺ��Ȱ� ���ðŰ���, ���������̼ǵ� ������ؼ� �ٽû����ؾ��ҰŰ���
		
		int listCount = productList.size(); // ��ǰ�Ѱ���
		
		PageInfo pi = Pagination.getPageInfo(currentPage, listCount, 12); // => ���������̼�
		
//		ArrayList<Product> list = ��ǰ����Ʈ; => ��ǰ����Ʈ�̾ƿ���
		
//		if(list != null) {
//			model.addAttribute("pi", pi);
//			model.addAttribute("list", list);
//			return "boardList";
//		} else {
//			throw new BoardException("�Խñ� ��ȸ�� �����Ͽ����ϴ�.");
//		}
		
		return null;
	}
}
