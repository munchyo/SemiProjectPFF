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
	
	@GetMapping("productList.pr")
	public String productList(@RequestParam(value="page", required=false) Integer currentPage, @RequestParam(value="productType", required=false) String productType, Model model) {
		if(currentPage == null) {
			currentPage = 1;
		}
		
		int listCount = pService.selectCountPrList(productType); // ��ǰ�Ѱ���
		
		PageInfo pi = Pagination.getPageInfo(currentPage, listCount, 12); // => ���������̼�
	
		ArrayList<Product> list = pService.selectPrList(pi, productType); // => ��ǰ����Ʈ�̾ƿ���
		// ��ǰ type2, ��ǥ����, productName, productPrice
		
		System.out.println("��ǰ����Ʈ : " + list);
		
		if(list != null) {
			model.addAttribute("productType", productType);
			model.addAttribute("pi", pi);
			model.addAttribute("list", list);
			return "productListCate1";
		} else {
			return null;
		}
		
	}
}
