package org.com.mvc.mappers;

import org.apache.ibatis.annotations.Mapper;
import org.com.mvc.dto.MemberDTO;

@Mapper
public interface MemberMapper {
	
	/*
		Data Access Layer인 Mapper 생성
		스프링 프로젝트에서는 Persistence Framework가 MyBatis일 경우 MyBatis 장점인 비즈니스 로직과 SQL구문을 
		나누는 방식인 @Repository를 사용한 DAO객체 만들거나 @Mapper을 이용해 Mapper 인터페이스를 만들어 Data Access Layer(데이터 접근 계층)을 구현하고
		 SQL구문이 있는 SQL Mapper 파일의 namespace와 id를 불러오는 방식이다.
		
		또한 SQL Mapper 작성 없이 Mapper 인터페이스 상에 @Select, @Insert, @Update, @Delete 등의 annotation을 통해 자바로만 객체지향 개발을 할 수 있다.
		
		아래는 Mybatis 스프링 모듈이 @Mapper 애너테이션이 선언 된 클래스들을 스캔하여 Mapper 인터페이스로 인식하며,
		 SQL Mapper인 XML 파일의 namespace(Mapper 인터페이스 전체 경로)와 id(Mapper 인터페이스 메서드)로 맵핑하여 SQL문을 호출하여 결과값을 가진다.
	
	*/
	
	// org.com.mvc.mapper.MemberMapper

	
	//@Select("SELECT	USERNAME AS USER_NAME FROM TB_USER WHERE USERNAME = #{user_name}")
	MemberDTO findByMember(String user_name)throws Exception;
}
