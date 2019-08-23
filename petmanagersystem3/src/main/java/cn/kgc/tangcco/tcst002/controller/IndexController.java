package cn.kgc.tangcco.tcst002.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/index")
public class IndexController {
	@RequestMapping("/toLogin.html")
	public String toLogin() {
		return "login";
	}
	@RequestMapping("/toLeft.html")
	public String toLeft() {
		return "left";
	}

	@RequestMapping("/toTop.html")
	public String toTop() {
		return "top";
	}

	@RequestMapping("/toHomePage.html")
	public String toHomePage() {
		return "homepage";
	}

	@RequestMapping("/toIndex.html")
	public String toIndex() {
		return "index";
	}

	@RequestMapping("/toChangePwd.html")
	public String toChangePwd() {
		return "changePwd";
	}

	@RequestMapping("/countSearch.html")
	public String countSearch() {
		return "countsearch";
	}

	@RequestMapping("/customerInput.html")
	public String customerInput() {
		return "customerinput";
	}

	@RequestMapping("/customerSearch.html")
	public String customerSearch() {
		return "customersearch";
	}

	@RequestMapping("/immune.html")
	public String immune() {
		return "immune";
	}

	@RequestMapping("/order.html")
	public String order() {
		return "order";
	}

	@RequestMapping("/pertInput.html")
	public String pertInput() {
		return "pertinput";
	}

	@RequestMapping("/petSearch.html")
	public String petSearch() {
		return "petsearch";
	}

	@RequestMapping("/petService.html")
	public String petService() {
		return "petservice";
	}

	@RequestMapping("/productInfo.html")
	public String productInfo() {
		return "productinfo";
	}

	@RequestMapping("/productInput.html")
	public String productInput() {
		return "productinput";
	}

	@RequestMapping("/search.html")
	public String search() {
		return "search";
	}

	@RequestMapping("/staffInput.html")
	public String staffInput() {
		return "staffinput";
	}

	@RequestMapping("/staffSearch.html")
	public String staffSearch() {
		return "staffsearch";
	}

	@RequestMapping("/update.html")
	public String update() {
		return "update";
	}

	@RequestMapping("/toAdmin.html")
	public String toAdmin() {
		return "administrators_management";
	}

}
