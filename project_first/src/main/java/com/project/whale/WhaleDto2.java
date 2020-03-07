package com.project.whale;

import org.springframework.data.annotation.Id;
import org.springframework.data.mongodb.core.mapping.Document;

@Document(collection="orderbook")
public class WhaleDto2 {
	@Id
	private Object id;
	private String contno;
	private String cointotal;
	private double order;
	private double coinprice;
	private String newtime;
	private String tradetime;
	private String tradetype;
	private String market;
	private String coinname;
	private String whale;
	private double cointotalint;
	
	
	
	public double getCointotalint() {
		return cointotalint;
	}
	public void setCointotalint(double cointotalint) {
		this.cointotalint = cointotalint;
	}
	public void setCointotal(String cointotal) {
		this.cointotal = cointotal;
	}
	public Object getId() {
		return id;
	}
	public void setId(Object id) {
		this.id = id;
	}
	public String getContno() {
		return contno;
	}
	public void setContno(String contno) {
		this.contno = contno;
	}

	public double getOrder() {
		return order;
	}
	public void setOrder(double order) {
		this.order = order;
	}
	public double getCoinprice() {
		return coinprice;
	}
	public void setCoinprice(double coinprice) {
		this.coinprice = coinprice;
	}
	public String getNewtime() {
		return newtime;
	}
	public void setNewtime(String newtime) {
		this.newtime = newtime;
	}
	public String getTradetime() {
		return tradetime;
	}
	public void setTradetime(String tradetime) {
		this.tradetime = tradetime;
	}
	public String getTradetype() {
		return tradetype;
	}
	public void setTradetype(String tradetype) {
		this.tradetype = tradetype;
	}
	public String getMarket() {
		return market;
	}
	public void setMarket(String market) {
		this.market = market;
	}
	public String getCoinname() {
		return coinname;
	}
	public void setCoinname(String coinname) {
		this.coinname = coinname;
	}
	public String getWhale() {
		return whale;
	}
	public void setWhale(String whale) {
		this.whale = whale;
	}
	public String getCointotal() {
		return cointotal;
	}

	
	
	
	
}
