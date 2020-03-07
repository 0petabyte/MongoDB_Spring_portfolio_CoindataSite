package com.project.join;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class UpdateController {

	@Autowired
	private JoinDao dao;
	
	@RequestMapping("/mongo/updateform.do")
	public ModelAndView updateform(@RequestParam String userid)
	{
		ModelAndView model=new ModelAndView();
		JoinDto dto=dao.getUserid(userid);
		model.addObject("dto",dto);
		model.setViewName("updateform");
		return model;
	}
	
	@RequestMapping("/mongo/update.do")
	public String update(@ModelAttribute JoinDto dto)
	{
		dao.updateData(dto);
		
		return "redirect:allprice.do";
	}
}
