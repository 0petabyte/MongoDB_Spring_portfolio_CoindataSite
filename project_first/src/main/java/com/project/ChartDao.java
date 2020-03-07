package com.project;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Sort;
import org.springframework.data.mongodb.core.MongoTemplate;
import org.springframework.data.mongodb.core.query.Query;
import org.springframework.stereotype.Repository;
@Repository
public class ChartDao {

	
	@Autowired
	private MongoTemplate mongoTemp;
	
	public void dropCollection()
	{
		mongoTemp.dropCollection(UserDao.class);
	}
	
	public List<ChartDto> findList()
	{
		
	    Query query = new Query();
	    
	    query.with(new Sort(new Sort.Order[] { new Sort.Order(Sort.Direction.DESC, "lastprice") }));
	    List<ChartDto> list = this.mongoTemp.find(query, ChartDto.class);
	    
		
		
		
		
		return list;
	
	}
	
	
	public List<ChartbarDto> findList1()
	{
		
	    Query query = new Query();
	    
	    query.with(new Sort(new Sort.Order[] { new Sort.Order(Sort.Direction.DESC, "_id") }));
	    List<ChartbarDto> list2 = this.mongoTemp.find(query, ChartbarDto.class);
	    
		
		
		
		
		return list2;
	
	}
	
	
	public List<BitfinexVolumeDto> findList2()
	{
		
	    Query query = new Query();
	    
	    query.with(new Sort(new Sort.Order[] { new Sort.Order(Sort.Direction.ASC, "nowday") }));
	    List<BitfinexVolumeDto> list3 = this.mongoTemp.find(query, BitfinexVolumeDto.class);
	    
		
		
		
		
		return list3;
	
	}
	
	
	public List<BtcSendCountDto> findList4()
	{
		
	    Query query = new Query();
	    
	    query.with(new Sort(new Sort.Order[] { new Sort.Order(Sort.Direction.ASC, "rank") }));
	    List<BtcSendCountDto> list4 = this.mongoTemp.find(query, BtcSendCountDto.class);
	    
		
		
		
		
		return list4;
	
	}
	

}




