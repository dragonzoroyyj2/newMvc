package org.com.mvc.dto;

import java.util.Collection;

import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.userdetails.User;

public class CustomUser extends User{

	 private UserDTO userDTO;
	    
	public CustomUser(String username,String password, Collection<? extends GrantedAuthority> authorities) {
		super(username, password, authorities);
	}
	
	
	public CustomUser(UserDTO dto) {
		 super(dto.getId(), dto.getPassword(), dto.getRold_cd());
	 
	     this.userDTO = dto;
 
	}

}
