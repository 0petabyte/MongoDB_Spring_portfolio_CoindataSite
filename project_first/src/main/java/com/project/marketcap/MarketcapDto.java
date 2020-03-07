package com.project.marketcap;

import org.springframework.data.annotation.Id;
import org.springframework.data.mongodb.core.mapping.Document;

@Document(collection="marketcap")
public class MarketcapDto {
	@Id
	private Object id;
	private String price;
	private String cap;
	private String volume;
	private String change;
	private String simbol;
	private String title;
	private double capint;
	private double volumeint;
	private double changeint;
	
	
	
	
	public String getChange() {
		return change;
	}
	public void setChange(String change) {
		this.change = change;
	}
	public double getChangeint() {
		return changeint;
	}
	public void setChangeint(double changeint) {
		this.changeint = changeint;
	}
	public Object getId() {
		return id;
	}
	public void setId(Object id) {
		this.id = id;
	}
	public String getPrice() {
		return price;
	}
	public void setPrice(String price) {
		this.price = price;
	}
	public String getCap() {
		return cap;
	}
	public void setCap(String cap) {
		this.cap = cap;
	}
	public String getVolume() {
		return volume;
	}
	public void setVolume(String volume) {
		this.volume = volume;
	}

	public String getSimbol() {
		return simbol;
	}
	public void setSimbol(String simbol) {
		this.simbol = simbol;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public double getCapint() {
		return capint;
	}
	public void setCapint(double capint) {
		this.capint = capint;
	}
	public double getVolumeint() {
		return volumeint;
	}
	public void setVolumeint(double volumeint) {
		this.volumeint = volumeint;
	}
	
	
	
	
	
	
	
	
	
	
}
