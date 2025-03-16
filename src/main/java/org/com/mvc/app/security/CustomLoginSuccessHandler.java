package org.com.mvc.app.security;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.com.mvc.dto.SecurityLoginDTO;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.security.core.Authentication;
import org.springframework.security.web.authentication.AuthenticationSuccessHandler;

public class CustomLoginSuccessHandler implements AuthenticationSuccessHandler{
	private static final Logger logger = LoggerFactory.getLogger(CustomLoginSuccessHandler.class);
	
	
	@Override
	public void onAuthenticationSuccess(HttpServletRequest request, HttpServletResponse response,
			Authentication authentication) throws IOException, ServletException {
		// TODO Auto-generated method stub
		
		logger.info("============================================");
		logger.info("@@@@@@@@@@@@ CustomLoginSuccessHandler page start");
		logger.info("============================================");
		
		//인증된 사용자의 정보를 추출
		SecurityLoginDTO dto =(SecurityLoginDTO)authentication.getPrincipal();
		logger.info("인증된 사용자의 정보를 추출 is {}" , dto); 
		
		
		//권한별 조치
		// - 일반회원 > "/member.do"
		// - 관리자 > "/admin.do"
		
		List<String> roleNames = new ArrayList<String>();
		
		//String url="/kimsaemERP/index.do";
		
		authentication.getAuthorities().forEach(authority -> {
			roleNames.add(authority.getAuthority());
			
			if(authority.getAuthority().equals("ROLE_ADMIN") | 
					authority.getAuthority().equals("ROLE_SYSTEM")) {
					//url="/kimsaemERP/admin/index.do";
			}
		});

		
		if(roleNames.contains("ROLE_ADMIN")) {
			logger.info("호출 4 is {} ", "ROLE_ADMIN");
			
			response.sendRedirect("/pages/admin/boardPage");
			return;
		}
		
		if(roleNames.contains("ROLE_MEMBER")) {
			
			response.sendRedirect("/pages/insa/page1");
			return;
		}
		
		
		if(roleNames.contains("ROLE_USER")) {
			
			response.sendRedirect("/pages/main/mainBoard");
			return;
		}
		
		response.sendRedirect("/pages/login/accessDeniedError");
		
	}

}
