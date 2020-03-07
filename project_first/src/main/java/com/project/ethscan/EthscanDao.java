package com.project.ethscan;

import java.util.Calendar;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Sort;
import org.springframework.data.mongodb.core.MongoTemplate;
import org.springframework.data.mongodb.core.query.Criteria;
import org.springframework.data.mongodb.core.query.Query;
import org.springframework.stereotype.Repository;
@Repository
public class EthscanDao {

	
	@Autowired
	private MongoTemplate mongoTemp;
	
	public void dropCollection()
	{
		mongoTemp.dropCollection(EthscanDao.class);
	}
	
	public List<EthscanDto> findList(String nowtime, String nowurl)
	{
		
		
		Calendar cal = Calendar.getInstance();
		 
		//현재 년도, 월, 일
		int year = cal.get ( cal.YEAR );
		int month = cal.get ( cal.MONTH ) + 1 ;
		int date = cal.get ( cal.DATE ) ;
		
		
		String result = "0";
		
		if (date < 10) {
			String text1 = "0";
			String chdate = Integer.toString(date);
			result = text1.concat(chdate);
			
			
		}else
		{
			result=Integer.toString(date);
		}
		
		
		String toyear =Integer.toString(year);
		String tomonth =Integer.toString(month);
		
		
		
		
		String todaynews = "todaynews";
		String totalnews = "totalnews";
		String mathdate = (toyear+tomonth+result);
		System.out.println("math"+mathdate);
		

		System.out.println(mathdate);
		
		nowtime = "nowtime";
		
	    Query query = new Query();
	    
    	query=new Query(new Criteria().andOperator(	
    			Criteria.where(nowtime).is(mathdate).regex(mathdate,"i")
    			)).with(new Sort(new Sort.Order[] { new Sort.Order(Sort.Direction.DESC, "_id") }));
	    

	    List<EthscanDto> list = this.mongoTemp.find(query, EthscanDto.class);
	    
		
		
		
		
		return list;
	
	}
	

}

