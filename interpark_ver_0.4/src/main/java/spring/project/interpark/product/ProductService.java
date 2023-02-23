package spring.project.interpark.product;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataIntegrityViolationException;
import org.springframework.stereotype.Service;

import spring.project.interpark.paging.PagingDTO;

@Service
public class ProductService {

	@Autowired
	private ProductDAO productDAO;

	public List<ProductDTO> productSelectAll() {
		return productDAO.selectProductAll();
	}
	
	public List<ProductDTO> productSelectAllPage(PagingDTO pagingDTO) {
		return productDAO.selectProductAllPage(pagingDTO);
	}
	
	public int listCount() throws Exception {
		return productDAO.listCount();
	}

	public ProductDTO productSelectDetail(int productnumber) {
		return productDAO.selectDetail(productnumber);
	}

	// 아래에는 영훈이형 파트
	public List<ProductDTO> SelectAll(PagingDTO pagingDTO) {
		return productDAO.selectAll(pagingDTO);
	}

	public ProductDTO detail(int productnumber) {
		return productDAO.detail(productnumber);
	}

	public void productInsert(ProductDTO productDTO) {
		try {
			productDAO.insert(productDTO);
		} catch (DataIntegrityViolationException e) {
		}

	}

	public void productUpdate(ProductDTO productDTO) {
		productDAO.update(productDTO);
	}

	public void productDelete(int productnumber) {
		productDAO.delete(productnumber);
	}
}
