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

import org.com.mvc.dao.TA1001MDAO;
import org.com.mvc.dto.MemberDetails;
import org.com.mvc.dto.TA1001MDTO;
import org.com.mvc.dto.UserDTO;
import org.springframework.stereotype.Service;

@Service
public class TA1001MServiceImpl implements TA1001MService{

	@Inject
	private TA1001MDAO dao;
	
	@Override
	public List<TA1001MDTO> selectTA1001M() throws Exception {
		return dao.selectTA1001M();
	}
	
	@Override
	public void insertTA1001M(TA1001MDTO vo) throws Exception {
		dao.insertTA1001M(vo);
	}

	@Override
	public UserDTO findUser() throws Exception {
		return dao.findUser();
	}

	@Override
	public List<MemberDetails>  findByUser(String username) throws Exception {
		// TODO Auto-generated method stub
		return (List<MemberDetails>) dao.findByUser(username);
	}



	/*
	 * @Transactional(isolation = Isolation.READ_COMMITTED)
	 * 
	 * @Override public BoardVO read(Integer bno) throws Exception {
	 * dao.updateViewCnt(bno); return dao.read(bno); }
	 */

	

}
