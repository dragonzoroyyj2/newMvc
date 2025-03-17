/**
  * @FileName : BoardServiceImpl.java
  * @Project : LottoGoodLuck
  * @Date : 2019. 11. 10. 
  * @작성자 : dragon 
  * @프로그램 설명 :
  *  -
  *=====================================================
  * @변경일자		수정자		변경내역
  *=====================================================
  */


package org.com.mvc.service;

import javax.inject.Inject;

import org.com.mvc.dao.BaseDbDAO;
import org.com.mvc.dto.ApiV1DTO;
import org.springframework.stereotype.Service;

@Service
public class BaseDbService<T>{

	@Inject
	private BaseDbDAO<T> dao;

	
	public T findUser(ApiV1DTO apiV1DTO) {
		
		return dao.findUser(apiV1DTO);
	}
	
	public T selectUser(ApiV1DTO apiV1DTO) {
		
		return dao.selectUser(apiV1DTO);
	}

}
