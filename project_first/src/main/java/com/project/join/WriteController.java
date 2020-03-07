package com.project.join;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class WriteController {
	@Autowired
	private JoinDao dao;
	
	@RequestMapping("/writeform.do")
	public String form()
	{
		return "/1/content/writefrom";
	}
	@RequestMapping("/write.do")
	public String readData(@ModelAttribute JoinDto dto)
	{
		dao.insert(dto);
		return "redirect:allprice.do";
	}
	
}
