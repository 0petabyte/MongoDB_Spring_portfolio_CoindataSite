package com.project.join;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Sort;
import org.springframework.data.mongodb.core.MongoTemplate;
import org.springframework.data.mongodb.core.query.Criteria;
import org.springframework.data.mongodb.core.query.Query;
import org.springframework.data.mongodb.core.query.Update;
import org.springframework.stereotype.Repository;



@Repository
public class JoinDao {

	
	@Autowired
	private MongoTemplate mongoTemp;
	
	public void dropCollection()
	{
		mongoTemp.dropCollection(JoinDao.class);
	}
	
	//dto 한개 저장시
	public void insert(JoinDto dto)
	{

		mongoTemp.insert(dto);
	}
	
	
	public List<JoinDto> findList(String userid, String userpass, String usermoney)
	{
		
	    Query query = new Query();
	    
	    query.with(new Sort(new Sort.Order[] { new Sort.Order(Sort.Direction.DESC, "_id") }));
	    List<JoinDto> list = this.mongoTemp.find(query, JoinDto.class);
	    
		
		return list;
	
	}
	
	public void insertList(List<JoinDto> list)

	{

		mongoTemp.insert(list,JoinDto.class);

	}

	public void updateData(JoinDto dto)
	{
		Query query=new Query(Criteria.where("userid").is(dto.getUserid()));
		mongoTemp.updateFirst(query, Update.update("hp", dto.getUserpasswd()), JoinDto.class);
		mongoTemp.updateFirst(query, Update.update("age", dto.getUsermoney()), JoinDto.class);
	}

	public JoinDto getUserid(String userid)
	{
		Query query=new Query(Criteria.where("userid").is(userid));
		return mongoTemp.findOne(query, JoinDto.class);
	}

}
