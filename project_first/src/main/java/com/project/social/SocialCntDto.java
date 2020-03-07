package com.project.social;

import org.springframework.data.annotation.Id;
import org.springframework.data.mongodb.core.mapping.Document;

@Document(collection="reply_replyanalysis")
public class SocialCntDto {

	@Id
	private Object id;
	private String coin;
	private int coincnt;
	public Object getId() {
		return id;
	}
	public void setId(Object id) {
		this.id = id;
	}
	public String getCoin() {
		return coin;
	}
	public void setCoin(String coin) {
		this.coin = coin;
	}
	public int getCoincnt() {
		return coincnt;
	}
	public void setCoincnt(int coincnt) {
		this.coincnt = coincnt;
	}
	
	
	
	
}
