package org.com.mvc.dto;
import java.sql.Date;
import java.util.Collection;

import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.userdetails.User;

public class SecurityLoginDTO extends User{
	private static final long serialVersionUID = -8761712883853209236L;
	
	private String id;
	private String pass;
	private String name;
	private String ssn;
	private String birthday;
	private String marry;
	private String gender;
	private String position;
	private String duty;
	private String classes;
	private Date startday;
	private Date endday;
	private String deptno;
	private String curstate;
	private String zipcode;
	private String addr;
	private String detailaddr;
	private String phonehome;
	private String phoneco;
	private String phonecell;
	private String email;
	private String profile_photo;
	private String deptname;
	private String job_category;
	private String menupath;
	
	public SecurityLoginDTO(
			 String mem_id
			,String pwd
			,boolean enabled
			,boolean accountNonExpired
			,boolean credentialsNonExpired
			,boolean accountNonLocked
			,Collection<? extends GrantedAuthority> authorities) {
				super(mem_id,pwd, enabled, accountNonExpired, 
				credentialsNonExpired, accountNonLocked, authorities);
	}

	public SecurityLoginDTO(
		 Collection<? extends GrantedAuthority> authorities
		,String id
		,String pass
		,String name
		,String ssn
		,String birthday
		,String marry
		,String gender
		,String position
		,String duty
		,String classes
		,Date startday
		,Date endday
		,String deptno
		,String curstate
		,String zipcode
		,String addr
		,String detailaddr
		,String phonehome
		,String phoneco
		,String phonecell
		,String email
		,String profile_photo
		,String deptname
		,String job_category
		,String menupath) 
	{
		
		super(id, pass, authorities);	
		
		this.id = id;
		this.pass = pass;
		this.name = name;
		this.ssn = ssn;
		this.birthday = birthday;
		this.marry = marry;
		this.gender = gender;
		this.position = position;
		this.duty = duty;
		this.classes = classes;
		this.startday = startday;
		this.endday = endday;
		this.deptno = deptno;
		this.curstate = curstate;
		this.zipcode = zipcode;
		this.addr = addr;
		this.detailaddr = detailaddr;
		this.phonehome = phonehome;
		this.phoneco = phoneco;
		this.phonecell = phonecell;
		this.email = email;
		this.profile_photo = profile_photo;
		this.deptname = deptname;
		this.job_category = job_category;
		this.menupath = menupath;
	}

	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getPass() {
		return pass;
	}
	public void setPass(String pass) {
		this.pass = pass;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getSsn() {
		return ssn;
	}
	public void setSsn(String ssn) {
		this.ssn = ssn;
	}
	public String getBirthday() {
		return birthday;
	}
	public void setBirthday(String birthday) {
		this.birthday = birthday;
	}
	public String getMarry() {
		return marry;
	}
	public void setMarry(String marry) {
		this.marry = marry;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getPosition() {
		return position;
	}
	public void setPosition(String position) {
		this.position = position;
	}
	public String getDuty() {
		return duty;
	}
	public void setDuty(String duty) {
		this.duty = duty;
	}
	public String getClasses() {
		return classes;
	}
	public void setClasses(String classes) {
		this.classes = classes;
	}
	public Date getStartday() {
		return startday;
	}
	public void setStartday(Date startday) {
		this.startday = startday;
	}
	public Date getEndday() {
		return endday;
	}
	public void setEndday(Date endday) {
		this.endday = endday;
	}
	public String getDeptno() {
		return deptno;
	}
	public void setDeptno(String deptno) {
		this.deptno = deptno;
	}
	public String getCurstate() {
		return curstate;
	}
	public void setCurstate(String curstate) {
		this.curstate = curstate;
	}
	public String getZipcode() {
		return zipcode;
	}
	public void setZipcode(String zipcode) {
		this.zipcode = zipcode;
	}
	public String getAddr() {
		return addr;
	}
	public void setAddr(String addr) {
		this.addr = addr;
	}
	public String getDetailaddr() {
		return detailaddr;
	}
	public void setDetailaddr(String detailaddr) {
		this.detailaddr = detailaddr;
	}
	public String getPhonehome() {
		return phonehome;
	}
	public void setPhonehome(String phonehome) {
		this.phonehome = phonehome;
	}
	public String getPhoneco() {
		return phoneco;
	}
	public void setPhoneco(String phoneco) {
		this.phoneco = phoneco;
	}
	public String getPhonecell() {
		return phonecell;
	}
	public void setPhonecell(String phonecell) {
		this.phonecell = phonecell;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getProfile_photo() {
		return profile_photo;
	}
	public void setProfile_photo(String profile_photo) {
		this.profile_photo = profile_photo;
	}
	public String getDeptname() {
		return deptname;
	}
	public void setDeptname(String deptname) {
		this.deptname = deptname;
	}
	public String getJob_category() {
		return job_category;
	}
	public void setJob_category(String job_category) {
		this.job_category = job_category;
	}
	public String getMenupath() {
		return menupath;
	}
	public void setMenupath(String menupath) {
		this.menupath = menupath;
	}
	@Override
	public String toString() {
		return "SecurityLoginDTO [id=" + id + ", pass=" + pass + ", name=" + name + ", ssn=" + ssn + ", birthday="
				+ birthday + ", marry=" + marry + ", gender=" + gender + ", position=" + position + ", duty=" + duty
				+ ", classes=" + classes + ", startday=" + startday + ", endday=" + endday + ", deptno=" + deptno
				+ ", curstate=" + curstate + ", zipcode=" + zipcode + ", addr=" + addr + ", detailaddr=" + detailaddr
				+ ", phonehome=" + phonehome + ", phoneco=" + phoneco + ", phonecell=" + phonecell + ", email=" + email
				+ ", profile_photo=" + profile_photo + ", deptname=" + deptname + ", job_category=" + job_category
				+ ", menupath=" + menupath + "]";
	}
}
