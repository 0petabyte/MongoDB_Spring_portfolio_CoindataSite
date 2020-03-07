package com.project.social;

import org.springframework.data.annotation.Id;
import org.springframework.data.mongodb.core.mapping.Document;

@Document (collection="reply")
public class SocialDto {

	@Id
	private Object id;
	private String title;
	private String newtime;
	private String url;
	private String newstime;
	
	
	
	
	
	
	
	
	
	
	

	public String getNewstime() {
		return newstime;
	}

	public void setNewstime(String newstime) {
		this.newstime = newstime;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getNewtime() {
		return newtime;
	}

	public void setNewtime(String newtime) {
		this.newtime = newtime;
	}

	public String getUrl() {
		return url;
	}

	public void setUrl(String url) {
		this.url = url;
	}

	public Object getId() {
		return id;
	}

	public void setId(Object id) {
		this.id = id;
	}
	
	
	
}
