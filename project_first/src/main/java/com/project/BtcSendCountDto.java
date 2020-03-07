package com.project;

import org.springframework.data.annotation.Id;
import org.springframework.data.mongodb.core.mapping.Document;

@Document(collection="btcscancount")
public class BtcSendCountDto {
	@Id
	private Object id;
	private int nowtime;
	private int rank;
	private int sendcount;
	public Object getId() {
		return id;
	}
	public void setId(Object id) {
		this.id = id;
	}
	public int getNowtime() {
		return nowtime;
	}
	public void setNowtime(int nowtime) {
		this.nowtime = nowtime;
	}
	public int getRank() {
		return rank;
	}
	public void setRank(int rank) {
		this.rank = rank;
	}
	public int getSendcount() {
		return sendcount;
	}
	public void setSendcount(int sendcount) {
		this.sendcount = sendcount;
	}
	
	
	
}
