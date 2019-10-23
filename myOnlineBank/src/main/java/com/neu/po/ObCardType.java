package com.neu.po;

public class ObCardType {
	private String cardtypeid;
	private String cardname;
	private String createdate;
	private String parentid;
	private String type;
	private String cardType;
	public String getCardtypeid() {
		return cardtypeid;
	}
	public void setCardtypeid(String cardtypeid) {
		this.cardtypeid = cardtypeid;
	}
	public String getCardname() {
		return cardname;
	}
	public void setCardname(String cardname) {
		this.cardname = cardname;
	}
	public String getCreatedate() {
		return createdate;
	}
	public void setCreatedate(String createdate) {
		this.createdate = createdate;
	}
	public String getParentid() {
		return parentid;
	}
	public void setParentid(String parentid) {
		this.parentid = parentid;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	public String getCardType() {
		return cardType;
	}
	public void setCardType(String cardType) {
		this.cardType = cardType;
	}
	@Override
	public String toString() {
		return "ObCardType [cardtypeid=" + cardtypeid + ", cardname=" + cardname + ", createdate=" + createdate
				+ ", parentid=" + parentid + ", type=" + type + ", cardType=" + cardType + "]";
	}
}
