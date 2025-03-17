package org.com.mvc.dao;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.com.mvc.dto.TA1001MDTO;
import org.com.mvc.dto.UserDTO;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Repository;

@Repository
public class UserDao {

	@Inject
	@Qualifier("sqlSession")  
	private SqlSession session;
	
	private static String namespace = "org.com.mapper.TA1001M.TA1001MMapper";

	public void userInsert(UserDTO userDTO) throws Exception {
		session.insert(namespace+".inserUser", userDTO);
	}
	

}
