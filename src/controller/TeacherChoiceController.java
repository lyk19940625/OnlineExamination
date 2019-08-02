package controller;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;  
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;  
import org.springframework.web.bind.annotation.RequestMethod;

import dao.ChoiceDao;
import entity.Choice;


@Controller  
@RequestMapping("/teacher_choice") 
public class TeacherChoiceController {
	@Resource
    private ChoiceDao choiceDao; 
	   @RequestMapping(value="/save",method = RequestMethod.POST)  
	  public String saveChoice(Choice choice) {  
    	choiceDao.saveChoice(choice);
        return "Teacher_Choice";  
    }  
}
