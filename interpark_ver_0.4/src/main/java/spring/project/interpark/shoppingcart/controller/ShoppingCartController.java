package spring.project.interpark.shoppingcart.controller;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import spring.project.interpark.shoppingcart.ShoppingCartDTO;
import spring.project.interpark.shoppingcart.ShoppingCartService;

@Controller
public class ShoppingCartController {

	@Autowired
	private ShoppingCartService shoppingCartService;

	private static final Logger logger = LoggerFactory.getLogger(ShoppingCartController.class);

	@RequestMapping(value = "/selectCartAll", method = RequestMethod.GET)
	private String selectView(Model model) {
		model.addAttribute("list", shoppingCartService.shoppingCartSelectAll());

		return "./cart/shopping_cart_selectAll_view";

	}

	@RequestMapping(value = "/deleteCart")
	private String deleteView(ShoppingCartDTO shoppingCartDTO, HttpServletRequest request) {

		String[] ajaxNum = request.getParameterValues("valueArr");

		logger.info("ajaxNum");
		int size = ajaxNum.length;

		for (int i = 0; i < size; i++) {
			shoppingCartService.shoppingCartDelete(Integer.parseInt(ajaxNum[i]));
		}

		// shoppingCartService.shoppingCartDelete(shoppingCartDTO.getNum());

		return "./cart/shopping_cart_selectAll_view";

	}

	@RequestMapping(value = "/updateCart", method = RequestMethod.POST)
	private String updateView(ShoppingCartDTO shoppingCartDTO, HttpServletRequest request) {

		String[] ajaxNum = request.getParameterValues("valueArr");
		String[] ajaxQuan = request.getParameterValues("valueArr1");

		int size = ajaxNum.length;

		for (int i = 0; i < size; i++) {
			// shoppingCartService.shoppingCartUpdate(Integer.parseInt(ajaxNum[i]),
			// Integer.parseInt(ajaxQuan[i]));

			Map<String, Object> map = new HashMap<String, Object>();
			map.put("num", ajaxNum[i]);
			map.put("quantity", ajaxQuan[i]);

			shoppingCartService.shoppingCartUpdate(map);

		}

		return "./cart/shopping_cart_selectAll_view";

	}

	@RequestMapping(value = "/insertCart", method = RequestMethod.GET)
	private String insertView(Model model, ShoppingCartDTO shoppingCartDTO, HttpServletRequest request) {

		int productnumber = Integer.parseInt(request.getParameter("productnumber"));
		int quantity = Integer.parseInt(request.getParameter("quantity"));

		model.addAttribute("shoppingCartDTO", shoppingCartService.shoppingCartSelectAll());

//		String[] numArr = request.getParameterValues("valueArr");
//		String[] quantityArr = request.getParameterValues("valueArr1");

		Map<String, Object> map = new HashMap<String, Object>();

		map.put("productnumber", productnumber);
		map.put("quantity", quantity);

		shoppingCartService.shoppingCartInsert(map);

		// model.addAttribute("list", productService.productSelectAll());
		// shoppingCartService.shoppingCartInsert(productName, quantity);
		// logger.info("list", model);

		return "./cart/shopping_cart_selectAll_view";

	}

}