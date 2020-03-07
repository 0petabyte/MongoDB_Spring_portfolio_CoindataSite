package com.project.btcscan;

import java.util.Date;

import org.springframework.data.annotation.Id;
import org.springframework.data.mongodb.core.mapping.Document;

@Document(collection="btc_topsend")
public class BtcscanDto {

	@Id
	private Object id;
	private String content;
	private Date actime;
	private String title;
	private String nowtime;
	private String toname;
	private String torank;
	private String towallet;
	private String fromname;
	private String fromwallet;
	private String fromrank;
	private String sendcnt;
	
	
	
	
	
	
	
	
	
	public String getToname() {
		return toname;
	}
	public void setToname(String toname) {
		this.toname = toname;
	}
	public String getTorank() {
		return torank;
	}
	public void setTorank(String torank) {
		this.torank = torank;
	}
	public String getTowallet() {
		return towallet;
	}
	public void setTowallet(String towallet) {
		this.towallet = towallet;
	}
	public String getFromname() {
		return fromname;
	}
	public void setFromname(String fromname) {
		this.fromname = fromname;
	}
	public String getFromwallet() {
		return fromwallet;
	}
	public void setFromwallet(String fromwallet) {
		this.fromwallet = fromwallet;
	}
	public String getFromrank() {
		return fromrank;
	}
	public void setFromrank(String fromrank) {
		this.fromrank = fromrank;
	}
	public String getSendcnt() {
		return sendcnt;
	}
	public void setSendcnt(String sendcnt) {
		this.sendcnt = sendcnt;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getNowtime() {
		return nowtime;
	}
	public void setNowtime(String nowtime) {
		this.nowtime = nowtime;
	}
	public Object getId() {
		return id;
	}
	public void setId(Object id) {
		this.id = id;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public Date getActime() {
		return actime;
	}
	public void setActime(Date actime) {
		this.actime = actime;
	}
	
	
	
	
	
	

	

	
	
}
