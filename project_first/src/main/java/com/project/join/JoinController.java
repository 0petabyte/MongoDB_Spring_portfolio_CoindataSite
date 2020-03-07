package com.project.join;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;


public class JoinController {


	@Autowired
	private JoinDao dao;


@RequestMapping("/join.do")
public ModelAndView list(String userid, String userpass, String usermoney) {
	ModelAndView model=new ModelAndView();
	List<JoinDto> list=dao.findList(userid,userpass,usermoney);
	

	model.setViewName("/1/content/allprice");
	return model;
}

}

