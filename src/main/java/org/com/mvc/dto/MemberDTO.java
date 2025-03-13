package org.com.mvc.dto;

public class MemberDTO {

	
	private String user_name;

	public String getuser_name() {
		return user_name;
	}

	public void setuser_name(String user_name) {
		this.user_name = user_name;
	}

	@Override
	public String toString() {
		return "MemberDTO [user_name=" + user_name + "]";
	}
	
	
	
}
