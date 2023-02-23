package spring.project.interpark.ticket.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.EnableAspectJAutoProxy;
import org.springframework.stereotype.Repository;

import spring.project.interpark.ticket.dto.BookerDTO;

@Repository
@EnableAspectJAutoProxy(proxyTargetClass = true)
public class BookerDAO {
	@Autowired
	SqlSessionTemplate sqlSessionTemplate;

	public List<BookerDTO> bookerSelectAll() {
		return sqlSessionTemplate.selectList("bookerSelectAll");
	}

	public BookerDTO bookerSelect(BookerDTO bookerDTO) {
		return sqlSessionTemplate.selectOne("bookerSelect", bookerDTO);
	}

	public void bookerInsert(BookerDTO bookerDTO) {
		sqlSessionTemplate.insert("bookerInsert", bookerDTO);
	}

	public void bookerUpdate(BookerDTO bookerDTO) {
		sqlSessionTemplate.update("bookerUpdate", bookerDTO);
	}

	public void bookerDelete(String showname) {
		sqlSessionTemplate.delete("bookerDelete", showname);
	}
}
