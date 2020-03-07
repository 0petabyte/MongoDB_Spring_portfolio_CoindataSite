package com.project;

import org.springframework.data.annotation.Id;
import org.springframework.data.mongodb.core.mapping.Document;

@Document (collection="bitfinex_btcvolumn")
public class BitfinexVolumeDto {
	@Id
	private Object id;
	private String name;
	private int btcvolume;
	private int nowtime;
	private int rank;
	private double price;
	private int nowday;
	
	
	
	
	
	
	
	
	

	public int getNowday() {
		return nowday;
	}
	public void setNowday(int nowday) {
		this.nowday = nowday;
	}
	public double getPrice() {
		return price;
	}
	public void setPrice(double price) {
		this.price = price;
	}
	public int getRank() {
		return rank;
	}
	public void setRank(int rank) {
		this.rank = rank;
	}
	public Object getId() {
		return id;
	}
	public void setId(Object id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getBtcvolume() {
		return btcvolume;
	}
	public void setBtcvolume(int btcvolume) {
		this.btcvolume = btcvolume;
	}
	public int getNowtime() {
		return nowtime;
	}
	public void setNowtime(int nowtime) {
		this.nowtime = nowtime;
	}
	
	
	
}
