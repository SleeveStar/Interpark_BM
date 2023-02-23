package spring.project.interpark.customer.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import spring.project.interpark.customer.dto.CustomerDTO;
import spring.project.interpark.customer.page.Criteria;
import spring.project.interpark.customer.page.PageMaker;
import spring.project.interpark.customer.service.CustomerService;
import spring.project.interpark.reply.dto.ReplyDTO;

@Controller
public class CustomerController {
	private static final Logger logger = LoggerFactory.getLogger(CustomerController.class);

	@Autowired
	private CustomerService customerService;

	// private ReplyService replyService;

	@RequestMapping(value = "/CustomerSelectDetail", method = RequestMethod.GET)
	public String detail(Model model, Model model1, HttpServletRequest request, CustomerDTO customerDTO,
			ReplyDTO replyDTO) throws Exception {
		String rnum = request.getParameter("num");
		int num = Integer.parseInt(rnum);
		model.addAttribute("customerDTO", customerService.customerSelect(num));

		logger.info("num" + num);
		// model1.addAttribute("repList", customerService.replySelect(num));

		List<ReplyDTO> repList = customerService.replySelect(num);
		model1.addAttribute("repList", repList);
		// model1.addAttribute("repList", customerService.replySelect(num));
		return "./customer/customer_select_view";
	}

	@RequestMapping(value = "/CustomerInsert", method = RequestMethod.GET)
	public String insert() {
		return "./customer/customer_insert";
	}

	@RequestMapping(value = "/CustomerInsert", method = RequestMethod.POST)
	public String insert(Model model, CustomerDTO customerDTO, Criteria cri) throws Exception {

		customerService.customerInsert(customerDTO);

		List<CustomerDTO> list = customerService.customerSelectAll(cri);

		int lastIndex = list.size() - 1;
		CustomerDTO customerDTO2 = list.get(lastIndex);
		int num = customerDTO2.getNum();
		

		model.addAttribute("num", num);

		return "./customer/customer_insert_view";
	}

	@RequestMapping(value = "/CustomerUpdate", method = RequestMethod.GET)
	public String update(Model model, CustomerDTO customerDTO) {
		model.addAttribute("customerDTO", customerService.customerSelect(customerDTO.getNum()));
		return "./customer/customer_update";
	}

	@RequestMapping(value = "/CustomerUpdate", method = RequestMethod.POST)
	public String update(CustomerDTO customerDTO) {
		customerService.customerUpdate(customerDTO);
		return "./customer/customer_update_view";
	}

	@RequestMapping(value = "/CustomerDelete", method = RequestMethod.GET)
	public String delete() {
		return "./customer/customer_delete";
	}

	@RequestMapping(value = "/CustomerDelete", method = RequestMethod.POST)
	public String delete(CustomerDTO customerDTO) {
		customerService.customerDelete(customerDTO.getNum());
		return "./customer/customer_delete_view";
	}

	@RequestMapping(value = "/CustomerSelect", method = RequestMethod.GET)
	public String list(Model model, Criteria cri, CustomerDTO customerDTO) throws Exception {
		logger.info("list");

		model.addAttribute("list", customerService.customerSelectAll(cri));

		PageMaker pageMaker = new PageMaker();
		pageMaker.setCri(cri);
		pageMaker.setTotalCount(customerService.listCount());
		model.addAttribute("pageMaker", pageMaker);

//		List<ReplyDTO> replyList = replyService.readReply(customerDTO.getNum());
//		model.addAttribute("replyList", replyList);
		return "customer/customer_selectpage";

	}

	@RequestMapping(value = "/write", method = RequestMethod.POST)
	public String posttWirte(ReplyDTO replyDTO) throws Exception {

		customerService.write(replyDTO);

		return "redirect:/CustomerSelectDetail?num=" + replyDTO.getNum();
	}

	
	@RequestMapping(value = "/replyupdate", method = RequestMethod.GET)
	public String update(ReplyDTO replyDTO, Model model) throws Exception {
		
		model.addAttribute("replyDTO", replyDTO);
		

		return "./customer/reply_update"; 
	}
	
	@RequestMapping(value = "/replyupdate", method = RequestMethod.POST)
	public String update(ReplyDTO replyDTO) throws Exception {
		customerService.update(replyDTO);

		// return "./customer/customer_delete";
		return "redirect:/CustomerSelectDetail?num=" + replyDTO.getNum();

	}
	@RequestMapping(value = "/replydelete", method = RequestMethod.GET)
	public String delete(ReplyDTO replyDTO, Model model) throws Exception {
		
		model.addAttribute("replyDTO", replyDTO);
		
		return "./customer/reply_delete";
	}
	
	@RequestMapping(value = "/replydelete1", method = RequestMethod.GET)
	public String delete(ReplyDTO replyDTO) throws Exception {
		customerService.delete(replyDTO);
		return "redirect:/CustomerSelectDetail?num=" + replyDTO.getNum();
	}
	

}