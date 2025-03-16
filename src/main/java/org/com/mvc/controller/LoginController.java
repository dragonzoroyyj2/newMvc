package org.com.mvc.controller;

import java.io.UnsupportedEncodingException;
import java.security.Principal;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.com.mvc.dto.LoginDTO;
import org.com.mvc.dto.UserDTO;
import org.com.mvc.service.LoginService;
import org.com.mvc.service.UserService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.security.web.authentication.logout.SecurityContextLogoutHandler;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

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
	
	@Inject
	LoginService loginservice;
	
			
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String index(Model model, Principal principal, HttpServletRequest request) {
		logger.info("principal  is {}", principal);
		model.addAttribute("data", "Hello <b>Spring!</b>");

		//
		return "/pages/main/mainBoard";
		
	}
	@RequestMapping(value = "/pages/login/loginPage", method = RequestMethod.GET)
	public void loginPage(Model model,  HttpServletRequest request, @RequestParam(value="fail",  required = false)String fail) {
		logger.info("request URL is {} " , request.getRequestURL().toString());
		logger.info("============ fail is {} ", fail); 
		
	}
	
	
	@RequestMapping(value = "/loginCtr", method = RequestMethod.POST)
	public String loginCtrPost(Model model, HttpServletRequest request) {
		logger.info("request URL is {} " , request.getRequestURL().toString());
		
		return "/pages/amdin/board";
	}
	
	@RequestMapping(value = "/pages/login/loginCheckSucc", method = RequestMethod.GET)
	public String loginPage(@RequestParam(value="name",  required = false)String fail, HttpServletRequest request, Principal principal) {
		logger.info("request URL is {} " , request.getRequestURL().toString());
		logger.info("============ fail is {} ", fail); 
		logger.info("principal  is {}", principal);
		
		return "/pages/admin/boardPage";
		
	}
	
	//csrf의 disabled 기본값이 false 이므로 로그아웃 요청도 post로 해야하고 csrf 토큰도 설정해야합니다
	//스프링에서 제공하는 로그인 로직을 사용하므로 /login 경로로 PostMapping되던 login 메소드를 제거했습니다.
	@RequestMapping(value = "/pages/login/logOut", method = RequestMethod.GET)
	public String logout(HttpServletRequest request,  HttpServletResponse response,
							Authentication auth,
							Model model,
							@RequestParam(value = "sessionExpired", defaultValue = "false") boolean sessionExpired,
							@RequestParam(value = "logout", defaultValue = "false") boolean logout,
							RedirectAttributes redirectAttributes)
	{
		
		
	       
	       logger.info("sessionExpired : "+auth);
			
	       String strRedirect = "";
			
	        if (sessionExpired) {
	        	
	        	redirectAttributes.addFlashAttribute("message", "Your session has expired. Please log in again.");
	        	strRedirect =  "redirect:/pages/login/sessionExpired";
	        	
	        }else if (logout) {// 예를 들어 로그아웃도 여기로 공통 사용하고 파마레터로 구분가능
	        
	        	Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
	 	        
	        	if(authentication != null) {
	 	            new SecurityContextLogoutHandler().logout(request, response, authentication);
	 	        }
	        	
	 	       strRedirect =  "redirect:/";
	 	       
	        }else {
	        	
	        	strRedirect =  "redirect:/";
	        }
	        
	        return  strRedirect; 
	       
	}
	
	@RequestMapping(value = "/pages/login/sessionExpired", method = RequestMethod.GET)
	public String sessionExpired(Model model , HttpServletRequest request) {
		
		logger.info("request URL is {} " , request.getRequestURL().toString());
		
		logger.info("model.getAttribute( message ) is  {}" , model.getAttribute("message"));
		
		if( model.getAttribute("message") != null ) {
			return  "/pages/login/sessionExpired";
			
		}else {
			return "redirect:/";
			
		}
		
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
	
	@RequestMapping(value = "/pages/main/mainBoard", method = RequestMethod.GET)
	public void mainBoard(Model model,  HttpServletRequest request) {
		
		logger.info("request URL is {} " , request.getRequestURL().toString());
		
		logger.info("request.getUserPrincipal()  is {}", request.getUserPrincipal());
		


	    Object principal = SecurityContextHolder.getContext().getAuthentication().getPrincipal();
	    UserDetails userDetails = (UserDetails)principal;
		
	    
	    logger.info("userDetails is {} " , userDetails);
	    
	    logger.info("userDetails.getAuthorities is {} " , userDetails.getAuthorities());
		
	    userDetails.getAuthorities().forEach(authority -> {
	    	logger.info("authority.getAuthority() is {} " , authority.getAuthority());
		});
	    
		
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
	
	
	@RequestMapping(value = "/addMember", method = RequestMethod.POST)
	public ResponseEntity<String> addMember(@RequestBody LoginDTO logindto) throws Exception{
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
		
		logger.info("getPassword pass  is {}" , logindto.getPass());
		logger.info("encoder pass  is {}" , encoder.encode( logindto.getPass() ));
		
		logindto.setPass(encoder.encode( logindto.getPass() ));
		
		loginservice.addMember(logindto);
		
		return new ResponseEntity<String>("멤버인설트", HttpStatus.OK);
		
	}
	
	
	
	
}
