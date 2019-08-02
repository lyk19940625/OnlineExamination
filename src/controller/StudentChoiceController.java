package controller;

import javax.annotation.Resource;

import java.util.List;

import org.springframework.stereotype.Controller;  
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;  
import org.springframework.web.bind.annotation.RequestMethod; 

import dao.ChoiceDao;
import entity.Choice;


@Controller  
@RequestMapping("student_choice") 
public class StudentChoiceController {
	@Resource
    private ChoiceDao scDao;
   
    @RequestMapping(value="query",method = RequestMethod.GET)  
    public String queryChoice(ModelMap map) {  
    	map.addAttribute("choicelist",scDao.findAll());
        return "Student_Choice";  

    }  
  
}
