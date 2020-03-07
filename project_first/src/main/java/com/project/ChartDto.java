package com.project;

import org.springframework.data.annotation.Id;
import org.springframework.data.mongodb.core.mapping.Document;





@Document(collection="btcprice")
public class ChartDto {
	@Id
	private Object id;
	private String coinname;
	private String price;
	private String coindata;
	private String uniquename;
	private int lastprice;
	private int highprice;
	private int lowprice;	

	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	


	public int getLastprice() {
		return lastprice;
	}
	public void setLastprice(int lastprice) {
		this.lastprice = lastprice;
	}
	public int getHighprice() {
		return highprice;
	}
	public void setHighprice(int highprice) {
		this.highprice = highprice;
	}
	public int getLowprice() {
		return lowprice;
	}
	public void setLowprice(int lowprice) {
		this.lowprice = lowprice;
	}
	public String getUniquename() {
		return uniquename;
	}
	public void setUniquename(String uniquename) {
		this.uniquename = uniquename;
	}
	public Object getId() {
		return id;
	}
	public void setId(Object id) {
		this.id = id;
	}
	public String getCoindata() {
		return coindata;
	}
	public void setCoindata(String coindata) {
		this.coindata = coindata;
	}
	public String getCoinname() {
		return coinname;
	}
	public void setCoinname(String coinname) {
		this.coinname = coinname;
	}
	public String getPrice() {
		return price;
	}
	public void setPrice(String price) {
		this.price = price;
	}
	
	
	
}




