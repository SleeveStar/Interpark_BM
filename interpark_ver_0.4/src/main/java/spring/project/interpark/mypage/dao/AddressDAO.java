package spring.project.interpark.mypage.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import spring.project.interpark.mypage.dto.AddressDTO;
import spring.project.interpark.mypage.page.Criteria;
import spring.project.interpark.mypage.search.SearchCriteria;

@Repository
public class AddressDAO {
	@Autowired
	SqlSessionTemplate sqlSessionTemplate;

	public List<AddressDTO> selectAll() {
		return sqlSessionTemplate.selectList("selectAllAddress");
	}

	public AddressDTO select(int num) {
		return sqlSessionTemplate.selectOne("selectAddress", num);
	}

	@Transactional
	public void insert(AddressDTO addressDTO) {
		sqlSessionTemplate.insert("insertAddress", addressDTO);
	}

	public void update(AddressDTO addressDTO) {
		sqlSessionTemplate.update("updateAddress", addressDTO);
	}

	public void delete(int num) {
		sqlSessionTemplate.delete("deleteAddress", num);
	}

	public List<AddressDTO> listPage(Criteria cri) throws Exception {
		return sqlSessionTemplate.selectList("addresslistPage", cri);
	}

	public int listCount() throws Exception {
		return sqlSessionTemplate.selectOne("addresslistCount");
	}

	public List<AddressDTO> listSearch(SearchCriteria scri) throws Exception {
		return sqlSessionTemplate.selectList("addresslistSearch", scri);
	}

	// 검색 결과 갯수
	public int countSearch(SearchCriteria scri) throws Exception {
		return sqlSessionTemplate.selectOne("addresscountSearch", scri);
	}
}
