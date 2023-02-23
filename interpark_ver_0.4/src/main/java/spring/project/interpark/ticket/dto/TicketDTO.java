package spring.project.interpark.ticket.dto;

import org.springframework.stereotype.Component;
import org.springframework.web.multipart.MultipartFile;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Component
@Setter
@Getter
@ToString

public class TicketDTO {
	private String showname;
	private String showdate;
	private String showloc;
	private String showinfo;
	private int ticketprice;
	private int ticketqty;
	private String showperiodst;
	private String showperioden;
	private MultipartFile file;

}
