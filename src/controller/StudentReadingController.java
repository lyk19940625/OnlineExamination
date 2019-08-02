package controller;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;  
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;  
import org.springframework.web.bind.annotation.RequestMethod; 

import dao.ReadingDao;
import entity.Reading;


@Controller  
@RequestMapping("student_reading") 
public class StudentReadingController {
	@Resource
    private ReadingDao srDao;
   
    @RequestMapping(value="query",method = RequestMethod.GET)  
    public String queryReading(ModelMap map) {  
    	map.addAttribute("readinglist",srDao.findAll());
        return "Student_Reading";  

    }  

}
