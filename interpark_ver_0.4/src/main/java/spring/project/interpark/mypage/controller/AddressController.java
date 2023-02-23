package spring.project.interpark.mypage.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import spring.project.interpark.mypage.dto.AddressDTO;
import spring.project.interpark.mypage.page.PageMaker;
import spring.project.interpark.mypage.search.SearchCriteria;
import spring.project.interpark.mypage.service.AddressService;

@Controller
public class AddressController {
	private static final Logger logger = LoggerFactory.getLogger(AddressController.class);

	@Autowired
	private AddressService addressService;

	@RequestMapping(value = "/AddressSelectList", method = RequestMethod.GET)
	public String selectList(@ModelAttribute("cri") SearchCriteria scri, Model model) throws Exception {
		model.addAttribute("list", addressService.addressSelectAll());
		logger.info("AddressSelectList", model);

		// 페이징
//		List<AddressDTO> list = addressService.listPage(cri);
//		model.addAttribute("list", list);
//
//		PageMaker pageMaker = new PageMaker();
//		pageMaker.setCri(cri);
//		pageMaker.setTotalCount(addressService.listCount());
//		model.addAttribute("pageMaker", pageMaker);

		// 페이징, 검색
		List<AddressDTO> list = addressService.listSearch(scri); // 지정된 page부터 perPageNum 의 수만큼 데이터를 반환한다.
		model.addAttribute("list", list);

		PageMaker pageMaker = new PageMaker();
		pageMaker.setCri(scri);

		pageMaker.setTotalCount(addressService.countSearch(scri));
		model.addAttribute("pageMaker", pageMaker);
		return "./address/address_select_all_view";
	}

	@RequestMapping(value = "/AddressInsert", method = RequestMethod.GET)
	public String insert() {
		return "./address/address_insert";
	}

	@RequestMapping(value = "/AddressInsert", method = RequestMethod.POST)
	public String insert(Model model, AddressDTO addressDTO) {
		model.addAttribute("list", addressService.addressSelectAll());
		addressService.addressInsert(addressDTO);
//		model.addAttribute("addressDTO", addressService.addressSelect(addressDTO.getAddressname()));
		return "./address/address_insert_view";
	}

//	@RequestMapping(value = "/AddressUpdate", method = RequestMethod.GET)
//	public void update() {
//	}

	@RequestMapping(value = "/AddressUpdate1", method = RequestMethod.GET)
	public String update(Model model, AddressDTO addressDTO) {
		model.addAttribute("addressDTO", addressDTO);
		return "./address/address_update";
	}

	@RequestMapping(value = "/AddressUpdate", method = RequestMethod.POST)
	public String update(AddressDTO addressDTO) {
		addressService.addressUpdate(addressDTO);
		return "./address/address_update_view";
	}

	@RequestMapping(value = "/AddressDelete", method = RequestMethod.GET)
	public void delete(HttpServletRequest request) {
		String num1 = request.getParameter("valueArr");
		int num = Integer.parseInt(num1);
		logger.info("qwdsfaqewfasdad", num);
		System.out.println(num);
		addressService.addressDelete(num);
	}

}
