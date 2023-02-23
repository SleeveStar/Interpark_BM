package spring.project.interpark.mypage.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataIntegrityViolationException;
import org.springframework.stereotype.Service;

import spring.project.interpark.mypage.dao.AddressDAO;
import spring.project.interpark.mypage.dto.AddressDTO;
import spring.project.interpark.mypage.page.Criteria;
import spring.project.interpark.mypage.search.SearchCriteria;

@Service
public class AddressService {
	@Autowired
	private AddressDAO addressDAO;

	public List<AddressDTO> addressSelectAll() {
		return addressDAO.selectAll();
	}

	public AddressDTO addressSelect(int num) {
		return addressDAO.select(num);
	}

	public void addressInsert(AddressDTO addressDTO) {
		try {
			addressDAO.insert(addressDTO);
			// 데이터의 무결성 제약조건에 대한 예외를 처리
		} catch (DataIntegrityViolationException e) {
			e.printStackTrace();
		}
	}

	public void addressUpdate(AddressDTO addressDTO) {
		addressDAO.update(addressDTO);
	}

	public void addressDelete(int num) {
		addressDAO.delete(num);
	}

	public List<AddressDTO> listPage(Criteria cri) throws Exception {
		return addressDAO.listPage(cri);
	}

	public int listCount() throws Exception {
		return addressDAO.listCount();
	}

	public List<AddressDTO> listSearch(SearchCriteria scri) throws Exception {
		return addressDAO.listSearch(scri);
	}

	// 검색 결과 갯수
	public int countSearch(SearchCriteria scri) throws Exception {
		return addressDAO.countSearch(scri);
	}
}
