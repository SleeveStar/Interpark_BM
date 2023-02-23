package spring.project.interpark.customer.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataIntegrityViolationException;
import org.springframework.stereotype.Service;

import spring.project.interpark.customer.dao.CustomerDAO;
import spring.project.interpark.customer.dto.CustomerDTO;
import spring.project.interpark.customer.page.Criteria;
import spring.project.interpark.reply.dto.ReplyDTO;

@Service
public class CustomerService {
	@Autowired
	private CustomerDAO customerDAO;

	public List<CustomerDTO> customerSelectAll(Criteria cri) throws Exception {
		return customerDAO.selectAll(cri);
	}

	public CustomerDTO customerSelect(int num) {
		return customerDAO.select(num);
	}

	public void customerInsert(CustomerDTO customerDTO) {
		try {
			customerDAO.insert(customerDTO);
		} catch (DataIntegrityViolationException e) {
			e.printStackTrace();
		}
	}

	public void customerUpdate(CustomerDTO customerDTO) {
		customerDAO.update(customerDTO);
	}

	public void customerDelete(int num) {
		customerDAO.delete(num);
	}

	public int listCount() {
		// TODO Auto-generated method stub
		return customerDAO.listCount();
	}

	public List<ReplyDTO> replySelect(int num) {
		return customerDAO.replySelect(num);
	}

	public void write(ReplyDTO replyDTO) throws Exception {
		customerDAO.write(replyDTO);
	}

	public void update(ReplyDTO replyDTO) throws Exception {
		customerDAO.update(replyDTO);
	}

	public void delete(ReplyDTO replyDTO) throws Exception {
		customerDAO.delete(replyDTO);
	}

}