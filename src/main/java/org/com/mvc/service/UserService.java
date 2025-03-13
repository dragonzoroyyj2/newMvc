package org.com.mvc.service;

import javax.inject.Inject;

import org.com.mvc.dao.UserDao;
import org.com.mvc.dto.UserDTO;
import org.springframework.stereotype.Service;

@Service
public class UserService {

	@Inject
	private UserDao dao;
	
	public void userInsert(UserDTO userDTO) throws Exception {
		dao.userInsert(userDTO);
		
	}
}
