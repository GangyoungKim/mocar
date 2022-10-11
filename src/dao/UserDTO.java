package dao;

import java.util.Date;

public class UserDTO {
	private String userid;
	private String userpw;
	private String username;
	private String usermail;
	private String usermember;
	private String new_pw2;
	private Date   userbirth;
	
	private String couponnum;
	private String coupontitle;
	private String couponday;
	
	
	public String getUserid() {
		return userid;
	}
	public void setUserid(String userid) {
		this.userid = userid;
	}
	public String getUserpw() {
		return userpw;
	}
	public void setUserpw(String userpw) {
		this.userpw = userpw;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getUsermail() {
		return usermail;
	}
	public void setUsermail(String usermail) {
		this.usermail = usermail;
	}
	public String getUsermember() {
		return usermember;
	}
	public void setUsermember(String usermember) {
		this.usermember = usermember;
	}
	public Date getUserbirth() {
		return userbirth;
	}
	public void setUserbirth(Date userbirth) {
		this.userbirth = userbirth;
	}
	public String getNew_pw2() {
		return new_pw2;
	}
	public void setNew_pw(String newpw2) {
		this.new_pw2 = newpw2;
	}
	
	public String getCouponnum() {
		return couponnum;
	}
	public void setCouponnum(String couponnum) {
		this.couponnum = couponnum;
	}
	public String getCoupontitle() {
		return coupontitle;
	}
	public void setCoupontitle(String coupontitle) {
		this.coupontitle = coupontitle;
	}
	public String getCouponday() {
		return couponday;
	}
	public void setCouponday(String couponday) {
		this.couponday = couponday;
	}
	
}
