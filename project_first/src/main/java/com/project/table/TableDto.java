package com.project.table;

import org.springframework.data.annotation.Id;
import org.springframework.data.mongodb.core.mapping.Document;


@Document(collection="questions")
public class TableDto {
	@Id
	
	//몽고디비 Dto 09.19 16:00 지웅 --시작
	private String id;
	private String title;
	private String url;
	//몽고디비 Dto 09.19 16:00 지웅 --까지

	
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getUrl() {
		return url;
	}
	public void setUrl(String url) {
		this.url = url;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}



	
	
}