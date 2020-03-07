package com.project.whale;

import org.springframework.data.annotation.Id;
import org.springframework.data.mongodb.core.mapping.Document;

@Document(collection="order_cnt")
public class WhalecntDto {
	@Id
	private Object id;

	private String coin;
	private int whalecnt;
	private int platypuscnt;
	private int whalebid;
	private int whaleask;
	private int platypusbid;
	private int platypusask;
	private String newtime;
	private double whaletotal;
	private double asktotal;
	private double bidtotal;
	
	
	
	
	
	
	
	
	public String getNewtime() {
		return newtime;
	}
	public void setNewtime(String newtime) {
		this.newtime = newtime;
	}
	public double getWhaletotal() {
		return whaletotal;
	}
	public void setWhaletotal(double whaletotal) {
		this.whaletotal = whaletotal;
	}
	public double getAsktotal() {
		return asktotal;
	}
	public void setAsktotal(double asktotal) {
		this.asktotal = asktotal;
	}
	public double getBidtotal() {
		return bidtotal;
	}
	public void setBidtotal(double bidtotal) {
		this.bidtotal = bidtotal;
	}

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
	public int getWhalecnt() {
		return whalecnt;
	}
	public void setWhalecnt(int whalecnt) {
		this.whalecnt = whalecnt;
	}
	public int getPlatypuscnt() {
		return platypuscnt;
	}
	public void setPlatypuscnt(int platypuscnt) {
		this.platypuscnt = platypuscnt;
	}
	public int getWhalebid() {
		return whalebid;
	}
	public void setWhalebid(int whalebid) {
		this.whalebid = whalebid;
	}
	public int getWhaleask() {
		return whaleask;
	}
	public void setWhaleask(int whaleask) {
		this.whaleask = whaleask;
	}
	public int getPlatypusbid() {
		return platypusbid;
	}
	public void setPlatypusbid(int platypusbid) {
		this.platypusbid = platypusbid;
	}
	public int getPlatypusask() {
		return platypusask;
	}
	public void setPlatypusask(int platypusask) {
		this.platypusask = platypusask;
	}
	
	
	
	
}
