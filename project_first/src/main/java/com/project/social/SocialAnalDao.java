package com.project.social;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Sort;
import org.springframework.data.mongodb.core.MongoTemplate;
import org.springframework.data.mongodb.core.query.Query;
import org.springframework.stereotype.Repository;

import com.project.BitfinexVolumeDto;
import com.project.ChartbarDto;
@Repository
public class SocialAnalDao {

	
	@Autowired
	private MongoTemplate mongoTemp;
	
	public void dropCollection()
	{
		mongoTemp.dropCollection(SocialAnalDao.class);
	}
	
	public List<SocialAnalDto> findList()
	{
		
	    Query query = new Query();
	    
	    query.with(new Sort(new Sort.Order[] { new Sort.Order(Sort.Direction.DESC, "_id") }));
	    List<SocialAnalDto> list = this.mongoTemp.find(query, SocialAnalDto.class);
	    
		
		
		
		
		return list;
	
	}
	public List<BitfinexVolumeDto> findList2()
	{
		
	    Query query = new Query();
	    
	    query.with(new Sort(new Sort.Order[] { new Sort.Order(Sort.Direction.ASC, "nowday") }));
	    List<BitfinexVolumeDto> list3 = this.mongoTemp.find(query, BitfinexVolumeDto.class);
	    
		
		
		
		
		return list3;
	
	}
	
	
	public List<ChartbarDto> findList1()
	{
		
	    Query query = new Query();
	    
	    query.with(new Sort(new Sort.Order[] { new Sort.Order(Sort.Direction.DESC, "_id") }));
	    List<ChartbarDto> list2 = this.mongoTemp.find(query, ChartbarDto.class);
	    
		
		
		
		
		return list2;
	
	}
	
}




