package org.com.mvc.dao;

import java.util.List;

import org.com.mvc.dto.LoginDTO;
import org.com.mvc.dto.MemberDetails;
import org.com.mvc.dto.TA1001MDTO;
import org.com.mvc.dto.UserDTO;


public interface TA1001MDAO {
	
	public List<TA1001MDTO> selectTA1001M()throws Exception;
	
	
	public void insertTA1001M(TA1001MDTO vo)throws Exception;
	
	public UserDTO findUser()throws Exception;
	
	
	public LoginDTO findById(String username)throws Exception;
	
	public List<MemberDetails>  findByUser(String username)throws Exception;
	
}