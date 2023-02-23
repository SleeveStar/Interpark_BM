package spring.project.interpark.customer.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.EnableAspectJAutoProxy;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import spring.project.interpark.customer.dto.CustomerDTO;
import spring.project.interpark.customer.page.Criteria;
import spring.project.interpark.reply.dto.ReplyDTO;

@Repository
@EnableAspectJAutoProxy(proxyTargetClass = true)
public class CustomerDAO {
	@Autowired
	SqlSessionTemplate sqlSessionTemplate;

	public List<CustomerDTO> selectAll(Criteria cri) throws Exception {
		return sqlSessionTemplate.selectList("selectboardAll", cri);
	}

	public int listCount() {
		return sqlSessionTemplate.selectOne("listCountboard");

	}

	public CustomerDTO select(int num) {
		return sqlSessionTemplate.selectOne("selectboard", num);
	}

	@Transactional

	public void insert(CustomerDTO customerDTO) {
		sqlSessionTemplate.insert("insertboard", customerDTO);
	}

	public void update(CustomerDTO customerDTO) {
		sqlSessionTemplate.update("updateboard", customerDTO);
	}

	public void delete(int num) {
		sqlSessionTemplate.delete("deleteboard", num);
	}

	public List<ReplyDTO> replySelect(int num) {
		return sqlSessionTemplate.selectList("readReply", num);
	}

	public void write(ReplyDTO replyDTO) throws Exception {
		sqlSessionTemplate.insert("replywrite", replyDTO);
	}

	public void update(ReplyDTO replyDTO) throws Exception {
		sqlSessionTemplate.update("replyupdate", replyDTO);
	}

	public void delete(ReplyDTO replyDTO) throws Exception {
		sqlSessionTemplate.delete("replyDelete", replyDTO);
	}
}