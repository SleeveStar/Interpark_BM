package spring.project.interpark.shoppingcart;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class ShoppingCartDAO {

	@Autowired
	SqlSessionTemplate sqlSessionTemplate;

	public List<ShoppingCartDTO> selectAll() {
		return sqlSessionTemplate.selectList("selectCartAll");
	}

//	public ShoppingCartDTO select(String productName) {
//		return sqlSessionTemplate.selectOne("select", productName);
//	}

	public void insert(Map<String, Object> map) {
		sqlSessionTemplate.insert("insertCart", map);
//		sqlSessionTemplate.insert("insert2", quantity);
	}

	
	public void update(Map<String, Object> map) {

		// 2개의 값을 맵에 담아서 보내야함

		sqlSessionTemplate.update("updateCart", map);
		// sqlSessionTemplate.update("updateCart", quantity);

		// https://micropilot.tistory.com/2624

	}

	public void delete(int num) {
		sqlSessionTemplate.delete("deleteCart", num);
	}

}