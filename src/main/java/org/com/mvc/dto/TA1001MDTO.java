/**
  * @Project : GoodLuck
  * @Date : 2019. 11. 10. 
  * @작성자 : dragon 
  * @프로그램 설명 :
  *  -
  *=====================================================
  * @변경일자		수정자		변경내역
  *=====================================================
  */
package org.com.mvc.dto;

import com.fasterxml.jackson.annotation.JsonInclude;

/**
 * @author dragon
 *
 */
//@JsonInclude(JsonInclude.Include.NON_NULL)  // null 값을 제외하고 직렬화
public class TA1001MDTO {

	
	private String id;			// ID
	private String pw;			// PW
	private String name;		// 성명
	private String dept_cd;		// 부서코드
	private String group_cd;	// 그룹코드
	private String hone;		// 연락처
	private String address;		// 주소
	private String gender;		// 성별
	private String age;			// 나이
	private String file_name; 	// 파일명
	private String file_path;	// 파일경로
	private String reg_id;		// 등록자
	//private String reg_date;	// 등록일
	private String mod_id;		// 수정자
	//private String mod_date;	// 수정일
	
	
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getPw() {
		return pw;
	}
	public void setPw(String pw) {
		this.pw = pw;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getDept_cd() {
		return dept_cd;
	}
	public void setDept_cd(String dept_cd) {
		this.dept_cd = dept_cd;
	}
	public String getGroup_cd() {
		return group_cd;
	}
	public void setGroup_cd(String group_cd) {
		this.group_cd = group_cd;
	}
	public String getHone() {
		return hone;
	}
	public void setHone(String hone) {
		this.hone = hone;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getAge() {
		return age;
	}
	public void setAge(String age) {
		this.age = age;
	}
	public String getFile_name() {
		return file_name;
	}
	public void setFile_name(String file_name) {
		this.file_name = file_name;
	}
	public String getFile_path() {
		return file_path;
	}
	public void setFile_path(String file_path) {
		this.file_path = file_path;
	}
	public String getReg_id() {
		return reg_id;
	}
	public void setReg_id(String reg_id) {
		this.reg_id = reg_id;
	}
	public String getMod_id() {
		return mod_id;
	}
	public void setMod_id(String mod_id) {
		this.mod_id = mod_id;
	}
	
	@Override
	public String toString() {
		return "TA1001MDTO [id=" + id + ", pw=" + pw + ", name=" + name + ", dept_cd=" + dept_cd + ", group_cd="
				+ group_cd + ", hone=" + hone + ", address=" + address + ", gender=" + gender + ", age=" + age
				+ ", file_name=" + file_name + ", file_path=" + file_path + ", reg_id=" + reg_id + ", mod_id=" + mod_id
				+ "]";
	}
	
}
