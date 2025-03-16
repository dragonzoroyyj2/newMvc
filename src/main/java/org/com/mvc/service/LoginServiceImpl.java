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

import java.util.List;

import javax.inject.Inject;

import org.com.mvc.dao.LoginDAO;
import org.com.mvc.dto.LoginDTO;
import org.com.mvc.dto.MemberAuthoritysDTO;
import org.springframework.stereotype.Service;

@Service
public class LoginServiceImpl implements LoginService{

	@Inject
	private LoginDAO dao;

	@Override
	public LoginDTO findById(String username) throws Exception {
		return dao.findById(username);
	}

	@Override
	public List<MemberAuthoritysDTO> ListAuthority(String username) throws Exception {
		return dao.listAuthority(username);
	}

	@Override
	public void addMember(LoginDTO dto) throws Exception {
		dao.addMember(dto);
		
	}
	


	

}
