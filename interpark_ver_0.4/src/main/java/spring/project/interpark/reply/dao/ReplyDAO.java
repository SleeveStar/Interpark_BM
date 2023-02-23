package spring.project.interpark.reply.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class ReplyDAO {
	
	@Autowired
	SqlSessionTemplate sqlSessionTemplate;
	public int readReply(int num){
		return sqlSessionTemplate.selectOne("readReply",num);
		
	}
}
