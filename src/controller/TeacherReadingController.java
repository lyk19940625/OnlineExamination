package controller;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;  
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;  
import org.springframework.web.bind.annotation.RequestMethod;

import dao.ReadingDao;
import entity.Reading;


@Controller  
@RequestMapping("/teacher_reading") 
public class TeacherReadingController {
	@Resource
    private ReadingDao readingDao; 
	   @RequestMapping(value="/save",method = RequestMethod.POST)  
	  public String saveReading(Reading reading) {  
    	readingDao.saveReading(reading);
        return "Teacher_Reading";  
    }  
}
