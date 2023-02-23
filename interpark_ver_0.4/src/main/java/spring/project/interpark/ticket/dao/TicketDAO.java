package spring.project.interpark.ticket.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.EnableAspectJAutoProxy;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import spring.project.interpark.ticket.dto.TicketDTO;

@Repository
@EnableAspectJAutoProxy(proxyTargetClass = true)

public class TicketDAO {
	@Autowired

	SqlSessionTemplate sqlSessionTemplate;

	public List<TicketDTO> selectAll() {
		return sqlSessionTemplate.selectList("ticketSelectAll");
	}

	public TicketDTO select(String showname) {
		return sqlSessionTemplate.selectOne("ticketSelect", showname);
	}

	@Transactional

	public void insert(TicketDTO ticketDTO) {
		sqlSessionTemplate.insert("ticketInsert", ticketDTO);
	}

	public void update(TicketDTO ticketDTO) {
		sqlSessionTemplate.update("ticketUpdate", ticketDTO);
	}

	public void delete(String showname) {
		sqlSessionTemplate.delete("ticketDelete", showname);
	}
}
