package controller;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;  
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;  
import org.springframework.web.bind.annotation.RequestMethod; 

import dao.BlankDao;
import entity.Blank;


@Controller  
@RequestMapping("student_blank") 
public class StudentBlankController {
	@Resource
    private BlankDao sbDao;
   
    @RequestMapping(value="query",method = RequestMethod.GET)  
    public String queryBlank(ModelMap map) {  
    	map.addAttribute("blanklist",sbDao.findAll());
        return "Student_Blank";  

    }  

}
