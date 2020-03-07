package com.project.ethscan;

import java.util.Date;

import org.springframework.data.annotation.Id;
import org.springframework.data.mongodb.core.mapping.Document;

@Document(collection="etherscan")
public class EthscanDto {

	@Id
	private Object id;
	private int count;
	private String to;
	private String fromid;
	private String time;
	private String title;
	private String torank;
	private String toname;
	private String fromrank;
	private String fromname;
	private String tocount;
	private String fromcount;
	private String nowtime;
	
	
	
	
	
	
	
	

	public String getNowtime() {
		return nowtime;
	}
	public void setNowtime(String nowtime) {
		this.nowtime = nowtime;
	}
	public String getTocount() {
		return tocount;
	}
	public void setTocount(String tocount) {
		this.tocount = tocount;
	}
	public String getFromcount() {
		return fromcount;
	}
	public void setFromcount(String fromcount) {
		this.fromcount = fromcount;
	}
	public String getTorank() {
		return torank;
	}
	public void setTorank(String torank) {
		this.torank = torank;
	}
	public String getToname() {
		return toname;
	}
	public void setToname(String toname) {
		this.toname = toname;
	}
	public String getFromrank() {
		return fromrank;
	}
	public void setFromrank(String fromrank) {
		this.fromrank = fromrank;
	}
	public String getFromname() {
		return fromname;
	}
	public void setFromname(String fromname) {
		this.fromname = fromname;
	}
	public Object getId() {
		return id;
	}
	public void setId(Object id) {
		this.id = id;
	}
	public int getCount() {
		return count;
	}
	public void setCount(int count) {
		this.count = count;
	}
	public String getTo() {
		return to;
	}
	public void setTo(String to) {
		this.to = to;
	}
	public String getFromid() {
		return fromid;
	}
	public void setFromid(String fromid) {
		this.fromid = fromid;
	}

	public String getTime() {
		return time;
	}
	public void setTime(String time) {
		this.time = time;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	
	
	
}
