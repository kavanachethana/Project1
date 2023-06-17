package controller;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import dao.Dao;
import dto.Adto;

@Controller
public class Load {
	@RequestMapping("/insert")

		
	public ModelAndView insertMvc(@ModelAttribute Adto adto) {
		ModelAndView andView=new ModelAndView("insert1.jsp");
		andView.addObject("msg","data inserted");
		return andView;
		
//		 System.out.println(adto.getId());
//		 System.out.println(adto.getName());
//		 System.out.println(adto.getEmail());
//		 System.out.println(adto.getPassword());
//		 System.out.println(adto.getGender());
//		 System.out.println(adto.getCountry());
//		 System.out.println(adto.getCheckbox());
//		 
//		 Dao dao=new Dao();
//		 dao.insert(adto);
		  
		 
	 
		 
	}
	@RequestMapping("/fetchAll")
	public ModelAndView fetchAll(Dao dao)
	{
		List<Adto> list=dao.fetchAll();
		ModelAndView view=new ModelAndView("Result.jsp");
		view.addObject("list",list);
		return view;
	}
}


