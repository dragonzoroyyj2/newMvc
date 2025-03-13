package org.com.mvc.dto;

public class UserSecurityDTO {
	   private String id;				// 
		private String name;			// 
		private String namemaile;		//
		private String role_cd;
		
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
		public String getRole_cd() {
			return role_cd;
		}
		public void setRole_cd(String role_cd) {
			this.role_cd = role_cd;
		}
}
