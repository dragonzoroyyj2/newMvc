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
import org.com.mvc.dto.MemberDetails;
import org.com.mvc.dto.TA1001MDTO;
import org.com.mvc.dto.UserDTO;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Repository;

@Repository
public class TA1001MDAOImpl implements TA1001MDAO{

	@Inject
	@Qualifier("sqlSession")  
	private SqlSession session;
	
	private static String namespace = "org.com.mapper.TA1001M.TA1001MMapper";

	@Override
	public List<TA1001MDTO> selectTA1001M() throws Exception {
		
		return session.selectList(namespace+".selectTA1001M");
		
	}

	@Override
	public void insertTA1001M(TA1001MDTO vo) throws Exception {
		
		session.insert(namespace+".insertTA1001M", vo);
		
	}
	
	@Override
	public UserDTO findUser() throws Exception {
		return session.selectOne(namespace+".findUser");
	}

	@Override
	public  List<MemberDetails> findByUser(String username) throws Exception {
		// TODO Auto-generated method stub
		return session.selectList(namespace+".findByUser",username);
	}

	@Override
	public LoginDTO findById(String username) throws Exception {
		return session.selectOne(namespace+".findById");
	}

}
