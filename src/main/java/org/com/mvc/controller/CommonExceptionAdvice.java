/**
  * @FileName : CommonExceptionAdvice.java
  * @Project : LottoGoodLuck
  * @Date : 2019. 11. 11. 
  * @작성자 : dragon 
  * @프로그램 설명 :
  *  -
  *=====================================================
  * @변경일자		수정자		변경내역
  *=====================================================
  */
package org.com.mvc.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.servlet.ModelAndView;

@ControllerAdvice
public class CommonExceptionAdvice {

	private static final Logger logger = LoggerFactory.getLogger(CommonExceptionAdvice.class);
	
	
	@ExceptionHandler(Exception.class)
	private ModelAndView errorModelAnView(Exception ex) {
		
		ModelAndView modelAndView = new ModelAndView();
		
		modelAndView.setViewName("/error/error_common");
		modelAndView.addObject("exception", ex);
		
		return modelAndView;
		
	}
	
}
