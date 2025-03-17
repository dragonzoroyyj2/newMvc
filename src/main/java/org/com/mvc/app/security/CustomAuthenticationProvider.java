package org.com.mvc.app.security;

import javax.inject.Inject;

import org.com.mvc.dto.SecurityLoginDTO;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.security.authentication.AuthenticationProvider;
import org.springframework.security.authentication.BadCredentialsException;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.AuthenticationException;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;


public class CustomAuthenticationProvider implements AuthenticationProvider{
	
	private static final Logger logger = LoggerFactory.getLogger(CustomAuthenticationProvider.class);

	@Inject
	BCryptPasswordEncoder bCryptPasswordEncoder;
	
	@Inject
	SecurityLoginService securityService;
	
	
	public Authentication authenticate(Authentication authentication) throws AuthenticationException {
		logger.info("authentication is  {}", authentication );
		//사용자가 입력한 데이터 추출하는 작업
		String username = authentication.getName();//아이디
		String pwd = (String)authentication.getCredentials();
		Object obj = authentication.getPrincipal();
		
		
		System.out.println(username+","+pwd+","+obj); 
		
		logger.info(" bCryptPasswordEncoder.encode pwd ==> {} ", bCryptPasswordEncoder.encode(pwd));
		
       //db인증작업을 하기 위해서 mybatis를 이용해서 db에서 조회한 결과를 저장
		SecurityLoginDTO user = (SecurityLoginDTO)securityService.loadUserByUsername(username);
		
		logger.info("CustomAuthenticationProvider ==> {} ", user);
		
		//db에서 조회한 데이터와 사용자가 입력한 데이터를 비교
		//사용자로 부터 입력받은 데이터를 암호화해서 비교
		boolean state = bCryptPasswordEncoder.matches(pwd, user.getPassword());
		
		logger.info(" state pwd ==> {} ", state);
		
		//원하는데이터를 UsernamePasswordAuthenticationToken로 만들어서 리턴  
		UsernamePasswordAuthenticationToken authUser = null;
		
		if(state) {//로그인 성공
			
			System.out.println("로그인 성공");
			//security의 authentication객체로 만들어서 리턴하는 것
			authUser = new UsernamePasswordAuthenticationToken(user,pwd,user.getAuthorities());
			System.out.println("provider===>"+authUser.getPrincipal());
			
		}else {
			
			System.out.println("로그인실패");
			throw new BadCredentialsException("비밀번호가 일치하지 않습니다.");
		}
		
		return authUser;
		
	}
	
	
	@Override
	public boolean supports(Class<?> authentication) {
		
		//*****************************************************************
		//인증을 처리하는 provider가 아이디와 패스워드를 통해서 인증되도록
		//하려면 반드시 true이어야 한다.
		//*****************************************************************
		
		return true; 
        
	}

}
