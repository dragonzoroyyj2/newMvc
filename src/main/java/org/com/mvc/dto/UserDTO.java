package org.com.mvc.dto;

import java.util.List;

public class UserDTO<T> {

	private String user_name;
    private String id;				// 
	private String name;			// 
	private String namemaile;		//
	private String role;
	private List<T> rold_cd;
	private String password;

	private String user_id; 
	private String username;
	private String email;
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getNamemaile() {
		return namemaile;
	}
	public void setNamemaile(String namemaile) {
		this.namemaile = namemaile;
	}
	public String getRole() {
		return role;
	}
	public void setRole(String role) {
		this.role = role;
	}
	public List<T> getRold_cd() {
		return rold_cd;
	}
	public void setRold_cd(List<T> rold_cd) {
		this.rold_cd = rold_cd;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getUser_id() {
		return user_id;
	}
	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}
	public String getusername() {
		return username;
	}
	public void setusername(String username) {
		this.username = username;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getUser_name() {
		return user_name;
	}
	public void setUser_name(String user_name) {
		this.user_name = user_name;
	}
	@Override
	public String toString() {
		return "UserDTO [user_name=" + user_name + ", id=" + id + ", name=" + name + ", namemaile=" + namemaile
				+ ", role=" + role + ", rold_cd=" + rold_cd + ", password=" + password + ", user_id=" + user_id
				+ ", username=" + username + ", email=" + email + "]";
	}
	
	
	
	
	
}
