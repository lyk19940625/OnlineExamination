package controller;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;  
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;  
import org.springframework.web.bind.annotation.RequestMethod; 

import dao.*;
import entity.*;


@Controller  
@RequestMapping("point") 
public class PointController {
	@Resource
     private PointDao pointDao;
    @RequestMapping(value="query",method = RequestMethod.GET)  
    public String queryExam(ModelMap map) {  
    	map.addAttribute("pointlist",pointDao.findPoint());
        return "Student_Point";  

    }     
	@Resource
    private ChoiceDao scDao;
	@Resource 
	private BlankDao sbDao;
	@Resource 
	private ReadingDao srDao;
  
   @RequestMapping(value="queryall",method = RequestMethod.GET)  
   public String queryAll(ModelMap map) {  
   	map.addAttribute("choicelist",scDao.findAll());
   	map.addAttribute("blanklist",sbDao.findAll());
   	map.addAttribute("readinglist",srDao.findAll());

       return "Student_PointAll";  

   }  
   
}
