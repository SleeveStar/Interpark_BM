package spring.project.interpark.product;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import spring.project.interpark.paging.PagingDTO;


@Repository
public class ProductDAO {

	@Autowired
	SqlSessionTemplate sqlSessionTemplate;

	public List<ProductDTO> selectProductAll() {
		return sqlSessionTemplate.selectList("selectProductAll");
	}
	
	public List<ProductDTO> selectProductAllPage(PagingDTO pagingDTO) {
		return sqlSessionTemplate.selectList("selectProductAllPage", pagingDTO);
	}

	public int listCount() throws Exception{
		return sqlSessionTemplate.selectOne("ListCount");
	}
	
	public ProductDTO selectDetail(int productnumber) {
		return sqlSessionTemplate.selectOne("selectProductDetail", productnumber);
	}
	
	//아래에는 영훈이형 파트
	public List<ProductDTO> selectAll(PagingDTO pagingDTO) {
		return sqlSessionTemplate.selectList("selectAll");
	}

	public ProductDTO detail(int productnumber) {
		return sqlSessionTemplate.selectOne("productselectdetail", productnumber);
	}
	
	@Transactional
	public void insert(ProductDTO productDTO) {
		sqlSessionTemplate.insert("productinsert", productDTO);
	}
	public void update(ProductDTO productDTO) {
		sqlSessionTemplate.update("productupdate", productDTO);
		}
	public void delete(int productnumber) {
		sqlSessionTemplate.delete("productdelete", productnumber);
	}

}
