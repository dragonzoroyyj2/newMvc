package org.com.mvc.dao;

import java.util.List;

import org.com.mvc.dto.LoginDTO;
import org.com.mvc.dto.MemberAuthoritysDTO;


public interface LoginDAO {
	
	public LoginDTO findById(String username)throws Exception;
	
	public List<MemberAuthoritysDTO>  listAuthority(String username)throws Exception;
	
	
	void addMember(LoginDTO dto)throws Exception;
	
}