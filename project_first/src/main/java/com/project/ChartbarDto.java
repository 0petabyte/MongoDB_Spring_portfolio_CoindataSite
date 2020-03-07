package com.project;

import org.springframework.data.annotation.Id;
import org.springframework.data.mongodb.core.mapping.Document;

@Document(collection="btctradeshop")
public class ChartbarDto {

	@Id
	private Object id;
	private String tradevaluename;
	private int longcount;
	private int shortcount;
	private double longper;
	private double shortper;
	
	
	
	
	
	

	
	
	
	
	


	public double getLongper() {
		return longper;
	}
	public void setLongper(double longper) {
		this.longper = longper;
	}
	public double getShortper() {
		return shortper;
	}
	public void setShortper(double shortper) {
		this.shortper = shortper;
	}
	public String getTradevaluename() {
		return tradevaluename;
	}
	public void setTradevaluename(String tradevaluename) {
		this.tradevaluename = tradevaluename;
	}
	public int getLongcount() {
		return longcount;
	}
	public void setLongcount(int longcount) {
		this.longcount = longcount;
	}
	public int getShortcount() {
		return shortcount;
	}
	public void setShortcount(int shortcount) {
		this.shortcount = shortcount;
	}
	public Object getId() {
		return id;
	}
	public void setId(Object id) {
		this.id = id;
	}
	
	
}
