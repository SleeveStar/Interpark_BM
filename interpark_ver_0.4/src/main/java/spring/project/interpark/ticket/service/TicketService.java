package spring.project.interpark.ticket.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataIntegrityViolationException;
import org.springframework.stereotype.Service;

import spring.project.interpark.ticket.dao.TicketDAO;
import spring.project.interpark.ticket.dto.TicketDTO;

@Service

public class TicketService {
	@Autowired
	private TicketDAO ticketDAO;
	
	public List<TicketDTO> ticketSelectAll() {
		return ticketDAO.selectAll();
	}
	
	public TicketDTO ticketSelect(String showname) {
		return ticketDAO.select(showname);
	}
	
	public void ticketInsert(TicketDTO ticketDTO) {
		try {
			ticketDAO.insert(ticketDTO);
		} catch (DataIntegrityViolationException e) {
			e.printStackTrace();
		}
	}
	
	public void ticketUpdate(TicketDTO ticketDTO) {
		ticketDAO.update(ticketDTO);
	}
	
	public void ticketDelete(String showname) {
		ticketDAO.delete(showname);
	}
	
}
