/**
  * @FileName : BoardDAOImpl.java
  * @Project : LottoGoodLuck
  * @Date : 2019. 11. 10. 
  * @작성자 : dragon 
  * @프로그램 설명 :
  *  -
  *=====================================================
  * @변경일자		수정자		변경내역
  *=====================================================
  */


package org.com.mvc.dao;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.com.mvc.dto.LoginDTO;
import org.com.mvc.dto.MemberAuthoritysDTO;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Repository;

@Repository
public class LoginDAOImpl implements LoginDAO{

	@Inject
	@Qualifier("sqlSession")  
	private SqlSession session;
	
	private static String namespace = "org.com.mvc.mappers.LoginMapper";

	@Override
	public LoginDTO findById(String username) throws Exception {
		return session.selectOne(namespace+".findById", username);
	}

	@Override
	public List<MemberAuthoritysDTO> listAuthority(String username) throws Exception {
		return session.selectList(namespace+".listAuthority", username);
	}

	@Override
	public void addMember(LoginDTO dto) throws Exception {
		session.insert(namespace+".addMember", dto);
		
	}


}
