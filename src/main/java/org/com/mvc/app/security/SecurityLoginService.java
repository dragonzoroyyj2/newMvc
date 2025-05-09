package org.com.mvc.app.security;

import java.util.ArrayList;
import java.util.List;

import javax.inject.Inject;

import org.com.mvc.dto.LoginDTO;
import org.com.mvc.dto.MemberAuthoritysDTO;
import org.com.mvc.dto.MemberDetails;
import org.com.mvc.dto.SecurityLoginDTO;
import org.com.mvc.service.LoginService;
import org.com.mvc.service.TA1001MService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;

public class SecurityLoginService implements UserDetailsService{
	
	private static final Logger logger = LoggerFactory.getLogger(SecurityLoginService.class);
	
	@Inject
	LoginService loginService;
	
	@Override
	public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
		logger.info("loadUserByUsername 호출");
		
		
		LoginDTO loginDTO = null; 
		UserDetails loginUser = null;
		
			
		try {
			loginDTO = loginService.findById(username);
		} catch (Exception e) {
			logger.error( "loginService.findById error  is {}" , e);
		}
			
		
		logger.info("loginDTO:" + loginDTO);
		
		/*
		 * 사용자 정보가 없을 경우 처리 (로그인 시)
			UsernameNotFoundException 예외가 발생하면, Spring Security는 로그인 실패 시
				기본적으로 AuthenticationException을 던지고,
				이를 처리할 수 있는 AuthenticationFailureHandler가 호출됩니다
		*/
		 if (loginDTO == null) {
			 throw new UsernameNotFoundException("User not found: " + username);
		 }
			
		//권한정보 조회하기
		List<MemberAuthoritysDTO> authorityList = null;
		
		try {
			
			authorityList = loginService.ListAuthority(username);
			
		} catch (Exception e1) {
			
			throw new UsernameNotFoundException(username);
		}
			
		
		logger.info("authorityList is {}", authorityList);
		
		List<GrantedAuthority> authorities = new ArrayList<GrantedAuthority>();

		for(int i=0;i<authorityList.size();i++) {
			authorities.add(new SimpleGrantedAuthority(authorityList.get(i).getAuthorityname()));
		}
		
		logger.info("authorities is {}", authorities);
			
		//인증정보와 권한을 User객체로 변환하여 리턴하기
		loginUser = new SecurityLoginDTO(
					 authorities
					,loginDTO.getId()  
					,loginDTO.getPass()
					,loginDTO.getName()
					,loginDTO.getSsn()
					,loginDTO.getBirthday()
					,loginDTO.getMarry()
					,loginDTO.getGender()
					,loginDTO.getPosition()
					,loginDTO.getDuty()
					,loginDTO.getClasses()
					,loginDTO.getStartday()
					,loginDTO.getEndday()
					,loginDTO.getDeptno()
					,loginDTO.getCurstate()
					,loginDTO.getZipcode()
					,loginDTO.getAddr()
					,loginDTO.getDetailaddr()
					,loginDTO.getPhonehome()
					,loginDTO.getPhoneco()
					,loginDTO.getPhonecell()
					,loginDTO.getEmail()
					,loginDTO.getProfile_photo()
					,loginDTO.getDeptname()
					,loginDTO.getJob_category()
					,loginDTO.getMenupath());
		
		
		System.out.println(loginUser);
		logger.info("loginUser is {}",  authorities);
		
		return loginUser;
			
			
			//@PreAuthorize("hasAuthority('ROLE_USER')")
			/*
			List<GrantedAuthority> authorities = new ArrayList<GrantedAuthority>();
			
			
			for(int i =0; i< user.size(); i++) {
				
				
				logger.info("load user by getAuthority:" + user.get(i).getAuthority());
				
				
				if(user.get(i).getAuthority() == null) {
					
					authorities.add(new SimpleGrantedAuthority("ROLE_USER"));
					
				}else {
					authorities.add(new SimpleGrantedAuthority(user.get(i).getAuthority()));
				}
				
			}
				*/
			
			
			/* 암호에대한 암호화문제
			 * https://velog.io/@zini9188/%EC%98%A4%EB%A5%98-%ED%95%B4%EA%B2%B0-There-is-no-PasswordEncoder-mapped-for-the-id-null
			 * 
			 * 
			 * PasswordEncoder
				오류를 해결하기 전에 PasswordEncoder에 알아보자.

				PasswordEncoder는 SpringSecurity 5버전 이상부터 적용해야 하는 비밀번호 암호화 과정이라고 한다. 
				기존에는 사용자의 비밀번호를 단방향으로 변환하여 저장하는 용도로만 사용했지만,
				 알고리즘이 고도화되는 과정에서 DelegaingPasswordEncoder가 생겼다고 한다.
			 * PasswordEncoder의 Prefix는 암호화 방법에 따라 바뀌는데 다음 표와 같다.

				Prefix	Encryption Method
				{noop}	암호화 없음. (평문)
				{bcrypt}	BCrypt 해시 함수로 암호화
				{pbkdf2}	PBKDF2 해시 함수로 암호화
				{scrypt}	Scrypt 해시 함수로 암호화

			 * 
			 */
			
			/*
			 * if(user.size() > 0 ) { loginUser = new User(user.get(0).getName(),
			 * user.get(0).getPassword() ,authorities); return loginUser; }
			 */
			
			

		//return null;
	}

}
