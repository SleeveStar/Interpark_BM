package spring.project.interpark.shoppingcart;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class ShoppingCartService {

	@Autowired
	private ShoppingCartDAO shoppingCartDAO;

	public List<ShoppingCartDTO> shoppingCartSelectAll() {
		return shoppingCartDAO.selectAll();
	}

//	public ShoppingCartDTO shoppingCartSelect(String productName) {
//		return shoppingCartDAO.select(productName);
//	}

	public void shoppingCartInsert(Map<String, Object> map) {
		shoppingCartDAO.insert(map);
	}

	public void shoppingCartUpdate(Map<String, Object> map) {
		shoppingCartDAO.update(map);
	}

	public void shoppingCartDelete(int num) {
		shoppingCartDAO.delete(num);
	}
	
//	public void shoppingCartDelete(String[]... num) {
//		shoppingCartDAO.delete(num);
//	}
	

}