/**
  * @FileName : BoardService.java
  * @Project : LottoGoodLuck
  * @Date : 2019. 11. 10. 
  * @작성자 : dragon 
  * @프로그램 설명 :
  *  -
  *=====================================================
  * @변경일자		수정자		변경내역
  *=====================================================
  */

/*
 * 비즈니스 계층의 구현 이유
 * 
 * 비즈니스 계층은 쉽게 말해서 컨트롤러와 DAO 사이의 접착제 역할을 한다.
 * 중간에 비즈니스 영역을 구분해서 개발하면 개발의 양이 늘어나는 것은 사실이다. 
 * 그그럼에도, 몇가지 이유가 있기 때문에 굳이 계층을 분리해서 개발을 해야한다.
 * 
 * 1. 비즈니스 계층은 고객마다 다른 부분을 처리할 수 있는 완충장치 역할을 한다.
 * 
 * 2. 각 회사마다 다른 로직이나 규칠을 데이터베이스에 무관하게 처리할 수 있는 완충 영역으로 존재할 필요가 있다.
 * 
 * 3. 컨트롤러와 같은 외부 호출이 영속 계층에 종속적인 상황을 막아준다.
 * 
 * 4. 만일 컨트롤러가 직접 영속 계층의 데이터베이스를 이용하게 되면 트랜잭션의 처리나 예외의 처리 등 모든 로직이 컨트롤러로 집중된다. 비즈니스 계층은 컨트롤러로 하여금 처리해야 하는 일을 분업하게  만들어 준다.
 * 
 * 비즈니스 게층의 구현은 로직에 필요한 데이터베이스 관련 객체들을 모아서 자신이 원하는 일을 처리하는 용도이다.
 */

package org.com.mvc.service;

import java.util.List;

import org.com.mvc.dto.LoginDTO;
import org.com.mvc.dto.MemberAuthoritysDTO;

public interface LoginService {
	
	public LoginDTO findById(String username)throws Exception;
	
	public List<MemberAuthoritysDTO>  ListAuthority(String username)throws Exception;
	
	void addMember(LoginDTO dto)throws Exception;
	
}
