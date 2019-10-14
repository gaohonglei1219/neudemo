package com.neu.po;

import java.util.Date;

public class Ob_User {
	private int obuserid;
	private String obusername;
	private String obuserpassword;
	private String certificatetype;
	private String certificatenum;
	private String realname;
	private Boolean gender;
	private String phonenum;
	private String fixphone;
	private String e_mail;
	private Boolean state;
	private Date createdate;
	public int getObuserid() {
		return obuserid;
	}
	public void setObuserid(int obuserid) {
		this.obuserid = obuserid;
	}
	public String getObusername() {
		return obusername;
	}
	public void setObusername(String obusername) {
		this.obusername = obusername;
	}
	public String getObuserpassword() {
		return obuserpassword;
	}
	public void setObuserpassword(String obuserpassword) {
		this.obuserpassword = obuserpassword;
	}
	public String getCertificatetype() {
		return certificatetype;
	}
	public void setCertificatetype(String certificatetype) {
		this.certificatetype = certificatetype;
	}
	public String getCertificatenum() {
		return certificatenum;
	}
	public void setCertificatenum(String certificatenum) {
		this.certificatenum = certificatenum;
	}
	public String getRealname() {
		return realname;
	}
	public void setRealname(String realname) {
		this.realname = realname;
	}
	public Boolean getGender() {
		return gender;
	}
	public void setGender(Boolean gender) {
		this.gender = gender;
	}
	public String getPhonenum() {
		return phonenum;
	}
	public void setPhonenum(String phonenum) {
		this.phonenum = phonenum;
	}
	public String getFixphone() {
		return fixphone;
	}
	public void setFixphone(String fixphone) {
		this.fixphone = fixphone;
	}
	public String getE_mail() {
		return e_mail;
	}
	public void setE_mail(String e_mail) {
		this.e_mail = e_mail;
	}
	public Boolean getState() {
		return state;
	}
	public void setState(Boolean state) {
		this.state = state;
	}
	public Date getCreatedate() {
		return createdate;
	}
	public void setCreatedate(Date createdate) {
		this.createdate = createdate;
	}
	@Override
	public String toString() {
		return "Ob_User [obuserid=" + obuserid + ", obusername=" + obusername + ", obuserpassword=" + obuserpassword
				+ ", certificatetype=" + certificatetype + ", certificatenum=" + certificatenum + ", realname="
				+ realname + ", gender=" + gender + ", phonenum=" + phonenum + ", fixphone=" + fixphone + ", e_mail="
				+ e_mail + ", state=" + state + ", createdate=" + createdate + "]";
	}
	
}
