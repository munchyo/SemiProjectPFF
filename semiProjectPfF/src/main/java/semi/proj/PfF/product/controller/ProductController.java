package semi.proj.PfF.product.controller;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
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
	public String productList(@RequestParam(value="page", required=false) Integer currentPage, @ModelAttribute Product productType, Model model) {
		
		if(currentPage == null) {
			currentPage = 1;
		} else if(currentPage < 0) {
			currentPage = 1;
		}
		
		if(productType.getproductType2() == null) productType.setProductType2("��ü");
		
		int listCount = pService.selectCountPrList(productType); // ��ǰ�Ѱ���
		
		ArrayList<String> ProductType2 = pService.selectType2(productType);	// productType2 ����
		
		PageInfo pi = Pagination.getPageInfo(currentPage, listCount, 20); // => ���������̼�
		
		ArrayList<Product> list = pService.selectPrList(pi, productType); // => ��ü ��ǰ����Ʈ�̾ƿ���
		// ��ǰ type2, ��ǥ����, productName, productPrice
		
		model.addAttribute("productType", productType.getProductType());	// �ī�װ��� ���� ����
		model.addAttribute("productType2", productType.getproductType2());	// �ī�װ��� ���� ����
		model.addAttribute("productType2List", ProductType2);	// ī�װ�2 ��ȸ�ϱ�����
		model.addAttribute("pi", pi);	// ���������̼�
		model.addAttribute("list", list);	// ���������̼ǵ� ����Ʈ
		return "productList";
	}
}
