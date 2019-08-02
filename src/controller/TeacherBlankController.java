package controller;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;  
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;  
import org.springframework.web.bind.annotation.RequestMethod;

import dao.BlankDao;
import entity.Blank;


@Controller  
@RequestMapping("/teacher_blank") 
public class TeacherBlankController {
	@Resource
    private BlankDao blankDao; 
	   @RequestMapping(value="/save",method = RequestMethod.POST)  
	  public String saveBlank(Blank blank) {  
    	blankDao.saveBlank(blank);
        return "Teacher_Blank";  
    }  
}
