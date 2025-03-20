package org.com.mvc.controller;

import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import org.springframework.web.servlet.view.RedirectView;

/**
 * Handles requests for the application home page.
 */
@Controller
public class WebController {
	
	private static final Logger logger = LoggerFactory.getLogger(WebController.class);
	
	/*
    @PostMapping("/modal/modal")
    public String getYearTable(Model model, @RequestBody int YEAR) {
      model.addAttribute("tableData", "data11111");
      return "/pages/modal/modal";
    }
    */
    
    @PostMapping("/modal/modal")
    public void getHtml(Model model, @RequestBody String code) {
    	model.addAttribute("modal_title", "알림타이틀");
    	model.addAttribute("modal_text", "알림 내용이다..");
    }
	
	
	
	
	@RequestMapping(value = "/main", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		/*
		logger.info("Welcome home! The client locale is {}.", locale);
		
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
		
		String formattedDate = dateFormat.format(date);
		
		model.addAttribute("serverTime", formattedDate);	
		*/
		
		return "/pages/main/mainBoard";
	}
	
	
	@RequestMapping(value = "/pages1/{page1}/{page2}", method = RequestMethod.GET)
    public String getPage(@PathVariable("page1") String page1, @PathVariable("page2") String page2) {
       
		// 전달된 페이지 이름을 그대로 반환
        return "/pages/" +page1 + "/" + page2;
        
    }
    
	
	/**
	 * Spring에서는 redirect: 접두어와 RedirectView를 사용하여 리다이렉트를 쉽게 처리할 수 있습니다. 
	 * 리다이렉트 시 쿼리 파라미터를 전달하거나 Flash Attributes를 사용하여 데이터도 함께 전달할 수 있습니다.
	 *  이 방법들은 다양한 리다이렉트 시나리오를 처리하는 데 유용합니다.
	 */
	@RequestMapping(value = "/app/menu", method = RequestMethod.GET)
	public RedirectView  menuRedirectView(@RequestParam("menu_cd") String menu_cd, RedirectAttributes redirectAttributes) {
		logger.info("menu_cd is {}.", menu_cd);
		
		String sUrl = "";
		
		//model.addAttribute("serverTime", formattedDate );
		
		//return "redirect:/dashboard/mainDashBoard";
		
		 //redirectAttributes.addFlashAttribute("menu_cd", menu_cd);
		
		RedirectView redirectView = new RedirectView();
        redirectView.setUrl("/"+menu_cd);
        return redirectView;
	}
	
    


	
}
