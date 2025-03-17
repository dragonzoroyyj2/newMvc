package org.com.mvc.service;

import javax.inject.Inject;

import org.com.mvc.dto.MemberDTO;
import org.com.mvc.mappers.MemberMapper;
import org.springframework.stereotype.Service;

@Service
public class MemberService  {
	
	 @Inject
	 MemberMapper memberMapper;
	 
	 public MemberDTO findByMember(String user_name) throws Exception { return
	 memberMapper.findByMember(user_name); }
	
}
