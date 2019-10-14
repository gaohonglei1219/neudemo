package com.neu.po;

public class ObCard {
	private int cardid;
	private String e_mail;
	private String address;
	private String cardalias;
	private String cardname;
	private String cardpassword;
	private String certificatenum;
	private String certificatetype;
	private String fixphone;
	private int gender;
	private int issigned;
	private int cardid2;
	private String phonenum;
	private String postcode;
	private int state;
	private int cardtypeid;
	private int networkid;
	private int obuserid;
	public int getCardid() {
		return cardid;
	}
	public void setCardid(int cardid) {
		this.cardid = cardid;
	}
	public String getE_mail() {
		return e_mail;
	}
	public void setE_mail(String e_mail) {
		this.e_mail = e_mail;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getCardalias() {
		return cardalias;
	}
	public void setCardalias(String cardalias) {
		this.cardalias = cardalias;
	}
	public String getCardname() {
		return cardname;
	}
	public void setCardname(String cardname) {
		this.cardname = cardname;
	}
	public String getCardpassword() {
		return cardpassword;
	}
	public void setCardpassword(String cardpassword) {
		this.cardpassword = cardpassword;
	}
	public String getCertificatenum() {
		return certificatenum;
	}
	public void setCertificatenum(String certificatenum) {
		this.certificatenum = certificatenum;
	}
	public String getCertificatetype() {
		return certificatetype;
	}
	public void setCertificatetype(String certificatetype) {
		this.certificatetype = certificatetype;
	}
	public String getFixphone() {
		return fixphone;
	}
	public void setFixphone(String fixphone) {
		this.fixphone = fixphone;
	}
	public int getGender() {
		return gender;
	}
	public void setGender(int gender) {
		this.gender = gender;
	}
	public int getIssigned() {
		return issigned;
	}
	public void setIssigned(int issigned) {
		this.issigned = issigned;
	}
	public int getCardid2() {
		return cardid2;
	}
	public void setCardid2(int cardid2) {
		this.cardid2 = cardid2;
	}
	public String getPhonenum() {
		return phonenum;
	}
	public void setPhonenum(String phonenum) {
		this.phonenum = phonenum;
	}
	public String getPostcode() {
		return postcode;
	}
	public void setPostcode(String postcode) {
		this.postcode = postcode;
	}
	public int getState() {
		return state;
	}
	public void setState(int state) {
		this.state = state;
	}
	public int getCardtypeid() {
		return cardtypeid;
	}
	public void setCardtypeid(int cardtypeid) {
		this.cardtypeid = cardtypeid;
	}
	public int getNetworkid() {
		return networkid;
	}
	public void setNetworkid(int networkid) {
		this.networkid = networkid;
	}
	public int getObuserid() {
		return obuserid;
	}
	public void setObuserid(int obuserid) {
		this.obuserid = obuserid;
	}
	@Override
	public String toString() {
		return "ObCard [cardid=" + cardid + ", e_mail=" + e_mail + ", address=" + address + ", cardalias=" + cardalias
				+ ", cardname=" + cardname + ", cardpassword=" + cardpassword + ", certificatenum=" + certificatenum
				+ ", certificatetype=" + certificatetype + ", fixphone=" + fixphone + ", gender=" + gender
				+ ", issigned=" + issigned + ", cardid2=" + cardid2 + ", phonenum=" + phonenum + ", postcode="
				+ postcode + ", state=" + state + ", cardtypeid=" + cardtypeid + ", networkid=" + networkid
				+ ", obuserid=" + obuserid + "]";
	}
}
