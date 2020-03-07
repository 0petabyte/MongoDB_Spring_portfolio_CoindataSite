package com.project;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Sort;
import org.springframework.data.mongodb.core.MongoTemplate;
import org.springframework.data.mongodb.core.query.Query;
import org.springframework.stereotype.Repository;
@Repository
public class BchPriceDao {

	
	@Autowired
	private MongoTemplate mongoTemp;
	
	public void dropCollection()
	{
		mongoTemp.dropCollection(UserDao.class);
	}
	
	public List<BchPriceDto> findList()
	{
		
	    Query query = new Query();
	    
	    query.with(new Sort(new Sort.Order[] { new Sort.Order(Sort.Direction.DESC, "_id") }));
	    List<BchPriceDto> list = this.mongoTemp.find(query, BchPriceDto.class);
	    
		
		
		
		
		return list;
	
	}
	

}


