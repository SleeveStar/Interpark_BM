package spring.project.interpark.shoppingcart.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class MainController {
	
	@RequestMapping(value = "/mainpage", method = RequestMethod.GET)
	public String mainpage() {
		return "./interpark/mainpage";
	}
	
}
