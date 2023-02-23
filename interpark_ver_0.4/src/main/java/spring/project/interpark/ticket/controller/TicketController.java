package spring.project.interpark.ticket.controller;

import java.io.File;
import java.io.IOException;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;

import spring.project.interpark.ticket.dto.TicketDTO;
import spring.project.interpark.ticket.service.TicketService;

@Controller
public class TicketController {
	private static final Logger logger = LoggerFactory.getLogger(TicketController.class);

	@Autowired
	private TicketService ticketService;

	@RequestMapping(value = "/TicketSelect", method = RequestMethod.GET)
	public String list(Model model) {
		model.addAttribute("list", ticketService.ticketSelectAll());
		logger.info("list", model);
		return "./ticket/ticket_select_all";
	}

	@RequestMapping(value = "/TicketSelectDetail", method = RequestMethod.GET)
	public String detail(Model model, TicketDTO ticketDTO) {
		model.addAttribute("ticketDTO", ticketService.ticketSelect(ticketDTO.getShowname()));
		return "./ticket/ticket_select_detail";
	}

	@RequestMapping(value = "/TicketInsert", method = RequestMethod.GET)
	public String insert() {
		return "./ticket/ticket_insert";
	}

	@RequestMapping(value = "/TicketInsert", method = RequestMethod.POST)
	public String insert(Model model, TicketDTO ticketDTO, MultipartFile file) {

		model.addAttribute("list", ticketService.ticketSelectAll());
		logger.info("model" + model);
		String fileRealName = file.getOriginalFilename();
		System.out.println(fileRealName);
		logger.info(fileRealName);
		ticketService.ticketInsert(ticketDTO);

// file = ticketDTO.getFile();

		String fileExtension = "jpg";
		String uploadFolder = "C:\\spring_workspace\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp0\\wtpwebapps\\interpark\\resources\\imgUpload";
		System.out.println("파일업로드 컨트롤러시작");
		logger.info("uploadFolder" + uploadFolder);
		String uniqueName = ticketDTO.getShowname();

		File saveFile = new File(uploadFolder + "\\" + uniqueName + "." + fileExtension);
		System.out.println(saveFile);
//	      if (file.getOriginalFilename() != null && file.getOriginalFilename() != "") {
//	         new File(uploadFolder + "\\" + uniqueName + "." + fileExtension).delete();
//	      }
//    File saveFile1 = new File(uploadFolder + "\\" + uniqueName + "." + fileExtension);
		try {
			file.transferTo(saveFile);
		} catch (IllegalStateException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}

		// 업로드 시도 두번째.. 제발 오늘은 성공해줘 나 CRUD 하나 더만들어야해

		return "./ticket/ticket_insert_alarm";
	}

	@RequestMapping(value = "/TicketUpdate", method = RequestMethod.GET)
	public String update() {
		return "./ticket/ticket_update";
	}

	@RequestMapping(value = "/TicketUpdate", method = RequestMethod.POST)
	public String update(TicketDTO ticketDTO) {
		ticketService.ticketUpdate(ticketDTO);
		return "./ticket/ticket_update_alarm";
	}

	@RequestMapping(value = "/TicketDelete", method = RequestMethod.GET)
	public String delete() {
		return "./ticket/ticket_delete";
	}

	@RequestMapping(value = "/TicketDelete", method = RequestMethod.POST)
	public String delete(TicketDTO ticketDTO) {
		ticketService.ticketDelete(ticketDTO.getShowname());

		// 파일지우기
		String path = "C:\\spring_workspace\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp0\\wtpwebapps\\interpark\\resources\\imgUpload";
		String fileExtension = "jpg";
		String uniqueName = ticketDTO.getShowname();
		new File(path + "\\" + uniqueName + "." + fileExtension).delete();

		return "./ticket/ticket_delete_alarm";
	}

}
