package com.project.total;

import java.util.Calendar;
import java.util.Date;
import java.util.List;



import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Sort;
import org.springframework.data.mongodb.core.MongoTemplate;
import org.springframework.data.mongodb.core.query.Criteria;
import org.springframework.data.mongodb.core.query.Query;
import org.springframework.data.mongodb.core.query.Update;
import org.springframework.stereotype.Repository;
import org.springframework.data.domain.Sort;


@Repository
public class TotalDao {

	@Autowired
	private MongoTemplate mongoTemp;
	
	public void dropCollection()
	{
		mongoTemp.dropCollection(TotalDao.class);
	}
	
	public List<TotalDto> findList(String keyWord, String keyField, String title, String whatday, String newtime, String nowurl,
			String keyword2)
	{
		//방법 1 : 전체데이타를 목록으로 얻고자 할경우
		//List<UserDto> list=mongoTemp.findAll(UserDto.class,"musicdata");
		
		//지우시마세요 지웅 추후에 쿼리문쓸려면 필요합니다// -- 지웅 09.19 16:00
		//방법2 - 조건에 의한 목록을 얻고자 할경우
/*		Query query=new Query(Criteria.where("_id").in("a1","a2","a3"));
		List<UserDto> list=mongoTemp.find(query, UserDto.class);
		*/
		
		Calendar cal = Calendar.getInstance();
		 
		//현재 년도, 월, 일
		int year = cal.get ( cal.YEAR );
		int month = cal.get ( cal.MONTH ) + 1 ;
		int date = cal.get ( cal.DATE ) ;
		
		String toyear =Integer.toString(year);
		String tomonth =Integer.toString(month);
		String todate =Integer.toString(date);
		
		String todaynews = "todaynews";
		String totalnews = "totalnews";
		String mathdate = (toyear+tomonth+todate);
		System.out.println(mathdate);
		title="title";
		newtime="newtime";
		System.out.println(whatday);
	    Query query = new Query();
	    
	    if (keyWord == null && whatday == null) 
    	query.with(new Sort(new Sort.Order[] { new Sort.Order(Sort.Direction.DESC, "_id") }));
    
	    else
		query=new Query(Criteria.where(keyField).regex(keyWord,"i"));
	    
	    
	    if (keyword2 != null ) 
			query=new Query(new Criteria().andOperator(	
	    			
	    			Criteria.where(title).is(keyword2).regex(keyword2,"i")
	    			)).with(new Sort(new Sort.Order[] { new Sort.Order(Sort.Direction.DESC, "_id") }));
	    
	   
	    

/*	    
	    if (keyWord == null)
	    	query.with(new Sort(new Sort.Order[] { new Sort.Order(Sort.Direction.DESC, "_id") }));
	    
	    if (keyWord != null)
			query=new Query(Criteria.where(keyField).regex(keyWord,"i"));
	    
	    /*
	    
	    if (whatday == today && keyWord == null)
	    	query=new Query(Criteria.where(newtime).regex(mathdate,"i"));
	    
	    if (whatday == total && keyWord == null)
	    	query.with(new Sort(new Sort.Order[] { new Sort.Order(Sort.Direction.DESC, "_id") }));
	    
	    */
	    
	    
	    List<TotalDto> list = this.mongoTemp.find(query, TotalDto.class);
	    
		
		
		
		
		return list;
	}
	

/*	public UserDto getSearchName(String name)
	{
		Query query=new Query(Criteria.where("title").is(title));
		return mongoTemp.findOne(query, UserDto.class);
	}
	*/


}
