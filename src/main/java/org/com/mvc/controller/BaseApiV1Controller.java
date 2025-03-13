package org.com.mvc.controller;

import java.util.ArrayList;
import java.util.List;

import javax.inject.Inject;

import org.com.mvc.dto.ApiV1DTO;
import org.com.mvc.dto.MemberDTO;
import org.com.mvc.dto.MemberDetails;
import org.com.mvc.dto.TA1001MDTO;
import org.com.mvc.service.BaseApiV1Service;
import org.com.mvc.service.BaseDbService;
import org.com.mvc.service.MemberService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class BaseApiV1Controller {
	private static final Logger logger = LoggerFactory.getLogger(BaseApiV1Controller.class);

	@Inject
	BaseApiV1Service<?> baseApiV1Service;
	
	@Inject
	BaseDbService<?> baseDbService;
	
	
	@Inject
	MemberService memberService;
	
	/*
	@RequestMapping(value = "/getLottoMANumbers", method = RequestMethod.GET)
	public ResponseEntity<List<Map<String, String>>> getLottoMANumbers(LottoVO lottoVO, LottoNumbersVO lottoNumbersVO, @RequestParam String nickName){
		List<Map<String, String>> lottoList = new ArrayList<>();
		
		ResponseEntity<List<Map<String, String>>> entity = null;
		try {
			
			if(nickName == null || nickName.equals("")) {
				nickName = "개인";
			}
			
			lottoVO.getLottoListMap(nickName);//등록자: 화면에서넘어오는 닉네임
			//System.out.println("lotto games count : " + lottoVO.getLottoList().size());
			//System.out.println("nickName : " + nickName);
			
			lottoList= lottoVO.getLottoList();
			
			entity  =  new ResponseEntity<List<Map<String, String>>>(lottoList, HttpStatus.OK);
			
		} catch (Exception e) {
			e.printStackTrace();
			entity  =  new ResponseEntity<List<Map<String, String>>>(HttpStatus.BAD_REQUEST);
		}
		
		return entity;
		
	}
	
	
	
	*/
	
	@RequestMapping(value = "/base/api/v1/user", method = RequestMethod.POST)
	public ResponseEntity<?> select(@RequestBody ApiV1DTO  apiV1DTO ) throws Exception {
		
		ApiV1DTO<?> apiDto = new ApiV1DTO<Object>(apiV1DTO.getMapper(),apiV1DTO.getSql(), 200, "OK",  baseDbService.selectUser(apiV1DTO), apiV1DTO.getPackageName(), apiV1DTO.getClassName());
		
		//return ResponseEntity.ok(apiDto);
		return new ResponseEntity(apiDto,HttpStatus.OK);
	}
	
	
	//@RequestMapping(value = "", method = RequestMethod.POST)
	@RequestMapping(value = "/base/api/v1/user222", method = RequestMethod.POST)
	public ResponseEntity<?> select2222(@RequestBody ApiV1DTO  apiV1DTO ) throws Exception {
		
		//selectTA1001M
		logger.error("dto sql is {} : ", apiV1DTO.toString() );
		
		// 클래스 이름을 동적으로 지정 (예: "com.example.MyDto")
        String className = "org.com.mvc.dto.TA1001MDTO";
        
        // 클래스 로드
        Class<?> clazz = Class.forName(className);
        
        
       //Class<?> clazz = Class.forName(apiV1DTO.getPackageName() + "." + apiV1DTO.getClassName());
        
        System.out.println(clazz);
        
        // 해당 클래스를 동적으로 인스턴스화
        Object instanceDto = clazz.getDeclaredConstructor().newInstance();

        // List에 동적 인스턴스를 추가
        List<Object> dtoList = new ArrayList<>();
        dtoList.add(instanceDto);
        
        // 결과 확인
        System.out.println("List contents: " + instanceDto.getClass());
		
       // instanceDto.getClass()
        
		
		
		/*
		ApiV1DTO<TA1001MDTO> aa = new ApiV1DTO<TA1001MDTO>();
		
		aa.setData(new TA1001MDTO());
		
		aa.getData().getId();
		
		*/
		//ApiV1DTO data  = new ApiV1DTO(200, "OK", dataList);
		
		
		// Jackson ObjectMapper를 사용하여 Map을 JSON으로 변환
        //ObjectMapper objectMapper = new ObjectMapper();
        //String json = objectMapper.writeValueAsString(dataList);
		
		TA1001MDTO dataDto = new TA1001MDTO(); 
		dataDto.setId("IDDDDD");
		
		//ApiV1DTO apiDto = new ApiV1DTO("org.com.dto", "TA1001MDTO", 200, "OK",  dataDto, apiV1DTO.getPackageName(), apiV1DTO.getClassName());
		ApiV1DTO apiDto = new ApiV1DTO("org.com.mvc.dto", "TA1001MDTO", 200, "OK",  baseApiV1Service.select(apiV1DTO), apiV1DTO.getPackageName(), apiV1DTO.getClassName());
		
		return new ResponseEntity(apiDto,HttpStatus.OK);
		
		
	}
	
	@RequestMapping(value = "/base/api/v1/findUser", method = RequestMethod.POST)
	public ResponseEntity<?> findUser(@RequestBody ApiV1DTO  apiV1DTO ) throws Exception {
		
		ApiV1DTO<?> apiDto = new ApiV1DTO<Object>("org.com.mvc.dto", "TA1001MDTO", 200, "OK",  baseDbService.findUser(apiV1DTO), apiV1DTO.getPackageName(), apiV1DTO.getClassName());
		
		//return ResponseEntity.(apiDto);
		
		 return new ResponseEntity(apiDto,HttpStatus.OK);
	}
	

	public <T> T createInstance(Class<T> clazz) throws Exception {
		return clazz.getDeclaredConstructor().newInstance();
	}
	
	
	@RequestMapping(value = "/base/api/v1/member", method = RequestMethod.POST)
	public ResponseEntity<MemberDTO> getMemberById(@RequestBody MemberDTO memberDTO ) throws Exception {
		
		
		logger.info("/base/api/v1/member dto is {}" , memberDTO.toString());
		
		
		MemberDTO  result = memberService.findByMember( memberDTO.getuser_name());
		
		 return new ResponseEntity<MemberDTO>(result, HttpStatus.OK);
	}
	
	
	
	
}
