package spring.project.interpark.reply.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import spring.project.interpark.reply.dao.ReplyDAO;

@Service

public class ReplyService {

	@Autowired
	private ReplyDAO replyDAO;

	public int readReply(int num) {
		return replyDAO.readReply(num);
	}
}