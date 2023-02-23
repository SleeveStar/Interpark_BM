package spring.project.interpark.ticket.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import spring.project.interpark.ticket.dto.BookerDTO;
import spring.project.interpark.ticket.service.BookerService;

@Controller
public class BookerController {
	private static final Logger logger = LoggerFactory.getLogger(BookerController.class);

	@Autowired
	private BookerService bookerService;

	@RequestMapping(value = "/BookerSelect", method = RequestMethod.GET)
	public String list(Model model) {
		model.addAttribute("list", bookerService.bookerSelectAll());
		logger.info("list", model);
		return "./booker/booker_select_all";

	}

	@RequestMapping(value = "/BookerInsert", method = RequestMethod.POST)
	public String bookerInsert(Model model, BookerDTO bookerDTO, @RequestParam("people") String people) {

		String showseat = bookerDTO.getShowseat();

		if (people.equals("1")) {

			String seat1 = showseat;

			System.err.println("선택된 좌석번호 - " + seat1);

		} else if (people.equals("2")) {

			int firstIndex = showseat.indexOf(",");
			String seat1 = showseat.substring(0, firstIndex);
			String seat2 = showseat.substring(firstIndex);

			System.err.println("선택된 좌석번호 - " + seat1 + seat2);

		} else if (people.equals("3")) {

			int firstIndex = showseat.indexOf(",");
			int secondIndex = showseat.indexOf(",", firstIndex);
			String seat1 = showseat.substring(0, firstIndex);
			String seat2 = showseat.substring(firstIndex, secondIndex);
			String seat3 = showseat.substring(secondIndex);

			System.err.println("선택된 좌석번호 - " + seat1 + seat2 + seat3);

		} else if (people.equals("4")) {

			int firstIndex = showseat.indexOf(",");
			int secondIndex = showseat.indexOf(",", firstIndex);
			int thirdIndex = showseat.indexOf(",", secondIndex);
			String seat1 = showseat.substring(0, firstIndex);
			String seat2 = showseat.substring(firstIndex, secondIndex);
			String seat3 = showseat.substring(secondIndex, thirdIndex);
			String seat4 = showseat.substring(thirdIndex);

			System.err.println("선택된 좌석번호 - " + seat1 + seat2 + seat3 + seat4);

		} else if (people.equals("5")) {

			int firstIndex = showseat.indexOf(",");
			int secondIndex = showseat.indexOf(",", firstIndex);
			int thirdIndex = showseat.indexOf(",", secondIndex);
			int fourthIndex = showseat.indexOf(",", thirdIndex);
			String seat1 = showseat.substring(0, firstIndex);
			String seat2 = showseat.substring(firstIndex, secondIndex);
			String seat3 = showseat.substring(secondIndex, thirdIndex);
			String seat4 = showseat.substring(thirdIndex, fourthIndex);
			String seat5 = showseat.substring(fourthIndex);

			System.err.println("선택된 좌석번호 - " + seat1 + seat2 + seat3 + seat4 + seat5);

		}

		model.addAttribute("bookerDTO", bookerDTO);
		bookerService.bookerInsert(bookerDTO);

		return "./booker/booker_insert_alarm";

	}

	@RequestMapping(value = "/BookerUpdate", method = RequestMethod.GET)
	public String bookerUpdate(Model model, BookerDTO bookerDTO) {

		model.addAttribute("bookerDTO", bookerService.bookerSelect(bookerDTO));

		return "./booker/booker_update";

	}

	@RequestMapping(value = "/BookerUpdate", method = RequestMethod.POST)
	public String bookerUpdateComp(BookerDTO bookerDTO) {
		bookerService.bookerUpdate(bookerDTO);
		return "./booker/booker_update_alarm";

	}

	@RequestMapping(value = "/BookerDelete", method = RequestMethod.GET)
	public String bookerDelete() {
		return "./booker/booker_delete";
	}

	@RequestMapping(value = "/BookerDelete", method = RequestMethod.POST)
	public String bookerDelete(BookerDTO bookerDTO) {
		bookerService.bookerDelete(bookerDTO.getShowname());
		return "./booker/booker_delete_alarm";
	}
}
