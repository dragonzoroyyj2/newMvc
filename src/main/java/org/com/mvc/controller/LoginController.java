package org.com.mvc.controller;

import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;
import java.security.Principal;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;

import org.com.mvc.dto.UserDTO;
import org.com.mvc.service.UserService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.security.core.Authentication;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

/**
 * Handles requests for the application home page.
 */
@Controller
public class LoginController {
	
	private static final Logger logger = LoggerFactory.getLogger(LoginController.class);
	
	@Inject
	private PasswordEncoder encoder;
	
	@Inject
	UserService userService;
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String index(Model model, Principal principal, HttpServletRequest request) {
		
		logger.info("호출1");
		logger.info("request URL is {} " , request.getRequestURL().toString());
		logger.info("principal  is {}", principal);
		
		return "/pages/main/mainBoard";
	}
	@RequestMapping(value = "/pages/login/loginPage", method = RequestMethod.GET)
	public void loginPage(Model model,  HttpServletRequest request, @RequestParam(value="fail",  required = false)String fail) {
		
		logger.info("호출2");
		logger.info("request URL is {} " , request.getRequestURL().toString());
		logger.info("============ fail is {} ", fail); 
		
	}
	
	
	@RequestMapping(value = "/loginCtr", method = RequestMethod.POST)
	public String loginCtrPost(Model model, HttpServletRequest request) {
		
		logger.info("호출3");
		logger.info("request URL is {} " , request.getRequestURL().toString());
		
		return "/pages/amdin/board";
	}
	
	@RequestMapping(value = "/pages/login/loginCheckSucc", method = RequestMethod.GET)
	public String loginPage(@RequestParam(value="name",  required = false)String fail, HttpServletRequest request, Principal principal) {
		logger.info("호출4");
		logger.info("request URL is {} " , request.getRequestURL().toString());
		
		logger.info("============ fail is {} ", fail); 
		
		logger.info("principal  is {}", principal);
		return "/pages/admin/boardPage";
		
	}
	
	@RequestMapping(value = "/pages/admin/boardPage", method = RequestMethod.GET)
	public void boardPage(Model model , HttpServletRequest request) {
		
		logger.info("request URL is {} " , request.getRequestURL().toString());
		
	} 
	
	

	
	@RequestMapping(value = "/pages/insa/page1", method = RequestMethod.GET)
	public void insa1(HttpServletRequest request) {
		
		logger.info("request URL is {} " , request.getRequestURL().toString());
		
	}
	
	@RequestMapping(value = "/pages/insa/page2", method = RequestMethod.GET)
	public void insa2(HttpServletRequest request) {
		
		logger.info("request URL is {} " , request.getRequestURL().toString());
		
	}
	
	@RequestMapping(value = "/pages/login/accessFail", method = RequestMethod.GET)
	public void accessFail(Authentication auth, Model model, HttpServletRequest request,  @RequestParam(value="msg",  required = false)String msg) {
		
		logger.info("request URL is {} " , request.getRequestURL().toString());
		
		//Authentication타입의 파라미터를 받도록 설계해서 필요한 경우 사용자의 정보를 확인할 수 있도록 함
		logger.info("access Denied : "+auth);
		model.addAttribute("msg","로그인에 실패 또는 사용자정보가 없습니다.");
	}
	
	@RequestMapping(value = "/pages/login/accessDeniedError", method = RequestMethod.GET)
	public void accessDenied(Authentication auth, Model model, HttpServletRequest request,  @RequestParam(value="msg",  required = false)String msg) {
		
		logger.info("request URL is {} " , request.getRequestURL().toString());
		
		//Authentication타입의 파라미터를 받도록 설계해서 필요한 경우 사용자의 정보를 확인할 수 있도록 함
		logger.info("access Denied : "+auth);
		model.addAttribute("msg", "권한이 없다. 권한받고 다시도전해라");
	}
	
	
	
	@RequestMapping(value = "/pages/login/entryPointError", method = RequestMethod.GET)
	public void entryPointError(Authentication auth, Model model, HttpServletRequest request, @RequestParam(value="msg",  required = false)String msg) throws UnsupportedEncodingException {
		
		logger.info("request URL is {} " , request.getRequestURL().toString());
		
		//Authentication타입의 파라미터를 받도록 설계해서 필요한 경우 사용자의 정보를 확인할 수 있도록 함
		logger.info("access entryPointError : "+auth);
		model.addAttribute("msg", "사용자정보 없습니다. 로그인을하세요");
	}
	
	@RequestMapping(value = "/userInsert", method = RequestMethod.POST)
	public ResponseEntity<String> userInsert(@RequestBody UserDTO usetDto) throws Exception{
		//		String strNickName = "";
		//		
		//		ResponseEntity<String> entity = null;
		//		try {
		//			
		//			
		//			userService.userInsert(usetDto);
		//			
		//			entity  =  new ResponseEntity<String>(usetDto.getName(), HttpStatus.OK);
		//			
		//		} catch (Exception e) {
		//			e.printStackTrace();
		//			entity  =  new ResponseEntity<String>(HttpStatus.BAD_REQUEST);
		//		}
		//		
		//		return entity;
		
		
		//암호 인코딩
		
		logger.info("getPassword pass  is {}" , usetDto.getPassword());
		logger.info("encoder pass  is {}" , encoder.encode( usetDto.getPassword() ));
		
		usetDto.setPassword(encoder.encode( usetDto.getPassword() ));
		
		userService.userInsert(usetDto);
		
		return new ResponseEntity<String>(usetDto.getName(), HttpStatus.OK);
		
	}
	
	
}
