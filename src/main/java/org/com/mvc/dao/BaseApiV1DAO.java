package org.com.mvc.dao;

import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.com.mvc.controller.BaseApiV1Controller;
import org.com.mvc.dto.ApiV1DTO;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Repository;

@Repository
public class BaseApiV1DAO<T> {
	
	private static final Logger logger = LoggerFactory.getLogger(BaseApiV1Controller.class);
	
	@Inject
	@Qualifier("sqlSession")  
	private SqlSession session;
	
	private static String namebase = "org.com.mapper";
	private static String namespace = "";
	private static String sql = "";

	
	public T find(ApiV1DTO apiV1DTO) throws Exception {
		
		namespace = namebase + "." + apiV1DTO.getMapper() + "." + apiV1DTO.getSql();
		
		logger.info("namespace is  {} : " , namespace);
		
		return session.selectOne(namespace);
		
	}
	
	
	 public Map<String, Object> selectOne(ApiV1DTO apiV1DTO) {
	     
		 	namespace = namebase + "." + apiV1DTO.getMapper() + "." + apiV1DTO.getSql();
			
			logger.info("namespace is  {} : " , namespace);
	     
			return session.selectOne(namespace);
	    }
	
	 
	 public List<Map<String, Object>> select(ApiV1DTO apiV1DTO) {
	     
		 	namespace = namebase + "." + apiV1DTO.getMapper() + "." + apiV1DTO.getSql();
			
			logger.info("namespace is  {} : " , namespace);
	     
			return session.selectList(namespace);
	    }
	
}
