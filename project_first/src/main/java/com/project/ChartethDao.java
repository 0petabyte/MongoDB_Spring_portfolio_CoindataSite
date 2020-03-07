package com.project;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Sort;
import org.springframework.data.mongodb.core.MongoTemplate;
import org.springframework.data.mongodb.core.query.Query;
import org.springframework.stereotype.Repository;
@Repository
public class ChartethDao {

	
	@Autowired
	private MongoTemplate mongoTemp;
	
	public void dropCollection()
	{
		mongoTemp.dropCollection(ChartethDao.class);
	}
	
	public List<ChartethDto> findList()
	{
		
	    Query query = new Query();
	    
	    query.with(new Sort(new Sort.Order[] { new Sort.Order(Sort.Direction.DESC, "lastprice") }));
	    List<ChartethDto> list = this.mongoTemp.find(query, ChartethDto.class);
	    
		
		
		
		
		return list;
	
	}
	
	
	public List<ChartbatethDto> findList1()
	{
		
	    Query query = new Query();
	    
	    query.with(new Sort(new Sort.Order[] { new Sort.Order(Sort.Direction.DESC, "_id") }));
	    List<ChartbatethDto> list2 = this.mongoTemp.find(query, ChartbatethDto.class);
	    
		
		
		
		
		return list2;
	
	}
	
	
	public List<BitfinexethVolumeDto> findList2()
	{
		
	    Query query = new Query();
	    
	    query.with(new Sort(new Sort.Order[] { new Sort.Order(Sort.Direction.ASC, "nowday") }));
	    List<BitfinexethVolumeDto> list3 = this.mongoTemp.find(query, BitfinexethVolumeDto.class);
	    
		
		
		
		
		return list3;
	
	}
	
	public List<ChartSendEthDto> findList4()
	{
		
	    Query query = new Query();
	    
	    query.with(new Sort(new Sort.Order[] { new Sort.Order(Sort.Direction.ASC, "rank") }));
	    List<ChartSendEthDto> list4 = this.mongoTemp.find(query, ChartSendEthDto.class);
	    
		
		
		
		
		return list4;
	
	}
}




