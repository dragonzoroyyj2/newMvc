package org.com.mvc.dto;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Date;
import java.util.List;

import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;

@SuppressWarnings("serial")
public class MemberDetails implements UserDetails{

	private int member_seq;
	private String user_id;
	private String username;
	private String email;
	private String password;
	private String authority;
	private boolean enabled;
	private String name;
	private Date birth;
	private int gender;
	private String image;
	
	public void setName(String name) {
		this.name = name;
	}

	public void setBirth(Date birth) {
		this.birth = birth;
	}

	public void setGender(int gender) {
		this.gender = gender;
	}

	public void setImage(String image) {
		this.image = image;
	}
	public int getMember_seq() {
		return member_seq;
	}


	public String getAuthority() {
		return authority;
	}


	public String getName() {
		return name;
	}


	public Date getBirth() {
		return birth;
	}


	public int getGender() {
		return gender;
	}


	public String getImage() {
		return image;
	}


	public String getEmail() {
		return email;
	}
	
	
	@Override
    public Collection<? extends GrantedAuthority> getAuthorities() {
        ArrayList<GrantedAuthority> auth = new ArrayList<GrantedAuthority>();
        auth.add(new SimpleGrantedAuthority(authority));
        return auth;
    }


	@Override
	public String getPassword() {
		return password;
	}

	@Override
	public String getUsername() {
		return username;
	}

	@Override
	public boolean isAccountNonExpired() {
		return true;
	}

	@Override
	public boolean isAccountNonLocked() {
		return true;
	}

	@Override
	public boolean isCredentialsNonExpired() {
		return true;
	}

	@Override
	public boolean isEnabled() {
		return enabled;
	}

	public String getUser_id() {
		return user_id;
	}

	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}


}
