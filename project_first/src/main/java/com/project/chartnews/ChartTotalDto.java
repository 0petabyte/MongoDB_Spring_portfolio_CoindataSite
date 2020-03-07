package com.project.chartnews;
import org.bson.types.ObjectId;
import org.springframework.data.annotation.Id;
import org.springframework.data.mongodb.core.mapping.Document;


@Document(collection="chartnews")
public class ChartTotalDto {
	@Id
	
	//몽고디비 Dto 09.19 16:00 지웅 --시작
	private ObjectId id;
	private String title;
	private String url;
	private String newsurl;
	private String content;
	private String newstime;
	private int newsdate;
	private String keyWord;
	private String keyField;
	private String newtime;
	private String whatday;
	private String nowurl;
	private String keyword2;
	
	
	
	
	
	
	//몽고디비 Dto 09.19 16:00 지웅 --까지



	public String getKeyword2() {
		return keyword2;
	}
	public void setKeyword2(String keyword2) {
		this.keyword2 = keyword2;
	}
	public String getWhatday() {
		return whatday;
	}
	public String getNowurl() {
		return nowurl;
	}
	public void setNowurl(String nowurl) {
		this.nowurl = nowurl;
	}
	public void setWhatday(String whatday) {
		this.whatday = whatday;
	}
	public String getNewtime() {
		return newtime;
	}
	public void setNewtime(String newtime) {
		this.newtime = newtime;
	}
	public int getNewsdate() {
		return newsdate;
	}
	public String getKeyField() {
		return keyField;
	}
	public void setKeyField(String keyField) {
		this.keyField = keyField;
	}
	public String getKeyWord() {
		return keyWord;
	}
	public void setKeyWord(String keyWord) {
		this.keyWord = keyWord;
	}
	public ObjectId getId() {
		return id;
	}
	public void setId(ObjectId id) {
		this.id = id;
	}
	public void setNewsdate(int newsdate) {
		this.newsdate = newsdate;
	}
	public String getNewstime() {
		return newstime;
	}
	public void setNewstime(String newstime) {
		this.newstime = newstime;
	}
	public String getNewsurl() {
		return newsurl;
	}
	public void setNewsurl(String newsurl) {
		this.newsurl = newsurl;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
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