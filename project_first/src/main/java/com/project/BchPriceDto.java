package com.project;

import org.springframework.data.annotation.Id;
import org.springframework.data.mongodb.core.mapping.Document;

@Document(collection="bchprice")
public class BchPriceDto {
	@Id
	private Object id;
	private int poloniexabc;
	private int poloniexsv;
	private int korbitsvprice;
	private int krobitbchprice;
	private int binancesvprice;
	private int binanceabcprice;
	private int upbitbch;
	private int upbitbsv;
	private int bithumbbch;
	private int polototal;
	private int binancetotal;
	private int bitfinexbsv;
	private int bitfinexbab;
	private int bitfinextotal;
	private int coinonebch;
	private int bithumbbsv;
	
	private int kobittotal;
	private int upbittotal;
	private int bithumbtotal;
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	public int getBithumbtotal() {
		return bithumbtotal;
	}
	public void setBithumbtotal(int bithumbtotal) {
		this.bithumbtotal = bithumbtotal;
	}
	public int getKobittotal() {
		return kobittotal;
	}
	public void setKobittotal(int kobittotal) {
		this.kobittotal = kobittotal;
	}
	public int getUpbittotal() {
		return upbittotal;
	}
	public void setUpbittotal(int upbittotal) {
		this.upbittotal = upbittotal;
	}
	public int getBithumbbsv() {
		return bithumbbsv;
	}
	public void setBithumbbsv(int bithumbbsv) {
		this.bithumbbsv = bithumbbsv;
	}
	public int getCoinonebch() {
		return coinonebch;
	}
	public void setCoinonebch(int coinonebch) {
		this.coinonebch = coinonebch;
	}
	public int getBitfinextotal() {
		return bitfinextotal;
	}
	public void setBitfinextotal(int bitfinextotal) {
		this.bitfinextotal = bitfinextotal;
	}
	public int getBitfinexbsv() {
		return bitfinexbsv;
	}
	public void setBitfinexbsv(int bitfinexbsv) {
		this.bitfinexbsv = bitfinexbsv;
	}
	public int getBitfinexbab() {
		return bitfinexbab;
	}
	public void setBitfinexbab(int bitfinexbab) {
		this.bitfinexbab = bitfinexbab;
	}
	public int getBinancetotal() {
		return binancetotal;
	}
	public void setBinancetotal(int binancetotal) {
		this.binancetotal = binancetotal;
	}
	public int getPolototal() {
		return polototal;
	}
	public void setPolototal(int polototal) {
		this.polototal = polototal;
	}
	public int getBithumbbch() {
		return bithumbbch;
	}
	public void setBithumbbch(int bithumbbch) {
		this.bithumbbch = bithumbbch;
	}
	public int getUpbitbch() {
		return upbitbch;
	}
	public void setUpbitbch(int upbitbch) {
		this.upbitbch = upbitbch;
	}
	public int getUpbitbsv() {
		return upbitbsv;
	}
	public void setUpbitbsv(int upbitbsv) {
		this.upbitbsv = upbitbsv;
	}
	public Object getId() {
		return id;
	}
	public void setId(Object id) {
		this.id = id;
	}
	public int getPoloniexabc() {
		return poloniexabc;
	}
	public void setPoloniexabc(int poloniexabc) {
		this.poloniexabc = poloniexabc;
	}
	public int getPoloniexsv() {
		return poloniexsv;
	}
	public void setPoloniexsv(int poloniexsv) {
		this.poloniexsv = poloniexsv;
	}
	public int getKorbitsvprice() {
		return korbitsvprice;
	}
	public void setKorbitsvprice(int korbitsvprice) {
		this.korbitsvprice = korbitsvprice;
	}
	public int getKrobitbchprice() {
		return krobitbchprice;
	}
	public void setKrobitbchprice(int krobitbchprice) {
		this.krobitbchprice = krobitbchprice;
	}
	public int getBinancesvprice() {
		return binancesvprice;
	}
	public void setBinancesvprice(int binancesvprice) {
		this.binancesvprice = binancesvprice;
	}
	public int getBinanceabcprice() {
		return binanceabcprice;
	}
	public void setBinanceabcprice(int binanceabcprice) {
		this.binanceabcprice = binanceabcprice;
	}
	
	
}
