package spring.project.interpark.ticket.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataIntegrityViolationException;
import org.springframework.stereotype.Service;

import spring.project.interpark.ticket.dao.BookerDAO;
import spring.project.interpark.ticket.dto.BookerDTO;

@Service
public class BookerService {
	@Autowired
	private BookerDAO bookerDAO;

	public List<BookerDTO> bookerSelectAll() {
		return bookerDAO.bookerSelectAll();
	}

	public BookerDTO bookerSelect(BookerDTO bookerDTO) {
		return bookerDAO.bookerSelect(bookerDTO);
	}

	public void bookerInsert(BookerDTO bookerDTO) {
		try {
			bookerDAO.bookerInsert(bookerDTO);
		} catch (DataIntegrityViolationException e) {
			e.printStackTrace();
		}

	}

	public void bookerUpdate(BookerDTO bookerDTO) {
		bookerDAO.bookerUpdate(bookerDTO);
	}

	public void bookerDelete(String showname) {
		bookerDAO.bookerDelete(showname);
	}
}
