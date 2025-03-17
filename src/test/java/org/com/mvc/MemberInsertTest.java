package org.com.mvc;

import org.apache.ibatis.session.SqlSession;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = {"file:/src/main/webapp/WEB-INF/spring/**/*.xml"})
public class MemberInsertTest {

	@Autowired
	private SqlSession sqlSession;
	
	
	@Test
	public void testInsert()throws Exception{
		
		
		//dto.setPass(bCryptPasswordEncoder.encode("1234"));
		
		//service.addMember(dto);
		
		System.out.println(sqlSession);
	}
}
