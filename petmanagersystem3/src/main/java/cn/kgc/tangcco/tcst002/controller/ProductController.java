package cn.kgc.tangcco.tcst002.controller;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.alibaba.fastjson.JSON;
import com.github.pagehelper.PageInfo;

import cn.kgc.tangcco.tcst002.pojo.Product;
import cn.kgc.tangcco.tcst002.service.product.ProductService;

@Controller
@RequestMapping("/product")
public class ProductController {
	@Resource
	private ProductService productService = null;

	@RequestMapping("/query.html")
	public String query(String productName, Model model) {
		System.out.println("err：" + productName);
		List<Product> list = productService.queryAllInfo(productName);
		System.err.println("dsad：" + list);
		model.addAttribute("productName", productName);
		model.addAttribute("list", list);
		return "productinfo";
	}

	@ResponseBody
	@RequestMapping("/shangJia")
	public Object shangJia(Integer id) {
		return JSON.toJSONString(productService.updateInfoShang(id));
	}

	@ResponseBody
	@RequestMapping("/xiaJia")
	public Object xiaJia(Integer id) {
		return JSON.toJSONString(productService.updateInfoXia(id));
	}

	@ResponseBody
	@RequestMapping("/insertInfo")
	public Object insertInfo(Product product) {
		return JSON.toJSONString(productService.insertInfo(product));
	}

	@RequestMapping("/countSearch.html")
	public String countSearch(String productName, Integer currentPageNo, Integer pageSize, Model model) {
		if(currentPageNo==null) {
			currentPageNo=1;
		}
		if(pageSize==null) {
			pageSize=6;
		}
		PageInfo<Product> pageInfo = productService.countSearch(productName, currentPageNo, pageSize);
		model.addAttribute("pageInfo", pageInfo);
		model.addAttribute("productName", productName);
		return "countsearch";
	}
	@ResponseBody
	@RequestMapping("/removeInfo")
	public Object removeInfo(Integer id) {
		return JSON.toJSONString(productService.removeInfo(id));
	}

}
