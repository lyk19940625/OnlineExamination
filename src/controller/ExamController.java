package controller;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;  
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;  
import org.springframework.web.bind.annotation.RequestMethod; 

import dao.*;
import entity.*;


@Controller  
@RequestMapping("exam") 
public class ExamController {
	@Resource
    private ExamDao examDao;
    @RequestMapping(value="/teacher_save",method = RequestMethod.POST)  
    public String saveExam(Exam exam,HttpServletRequest request,HttpSession session) {  
    	examDao.saveExam(exam);
    	 request.getSession().removeAttribute("sign");
         request.getSession().removeAttribute("select_title1");
         request.getSession().removeAttribute("select_title2");
         request.getSession().removeAttribute("select_title3");
         request.getSession().removeAttribute("select_title4");
         request.getSession().removeAttribute("select_title5");
         request.getSession().removeAttribute("select_title6");
         request.getSession().removeAttribute("select_title7");
         request.getSession().removeAttribute("select_title8");
         request.getSession().removeAttribute("select_title9");
         request.getSession().removeAttribute("select_title10");
         request.getSession().removeAttribute("select_choicea1");
         request.getSession().removeAttribute("select_choicea2");
         request.getSession().removeAttribute("select_choicea3");
         request.getSession().removeAttribute("select_choicea4");
         request.getSession().removeAttribute("select_choicea5");
         request.getSession().removeAttribute("select_choiceb1");
         request.getSession().removeAttribute("select_choiceb2");
         request.getSession().removeAttribute("select_choiceb3");
         request.getSession().removeAttribute("select_choiceb4");
         request.getSession().removeAttribute("select_choiceb5");
         request.getSession().removeAttribute("select_choicec1");
         request.getSession().removeAttribute("select_choicec2");
         request.getSession().removeAttribute("select_choicec3");
         request.getSession().removeAttribute("select_choicec4");
         request.getSession().removeAttribute("select_choicec5");
         request.getSession().removeAttribute("select_choiced1");
         request.getSession().removeAttribute("select_choiced2");
         request.getSession().removeAttribute("select_choiced3");
         request.getSession().removeAttribute("select_choiced4");
         request.getSession().removeAttribute("select_choiced5");
         request.getSession().removeAttribute("select_answer6");
         request.getSession().removeAttribute("select_answer7");
         request.getSession().removeAttribute("select_answer8");
         request.getSession().removeAttribute("select_answer9");
         request.getSession().removeAttribute("select_answer10");
       
        return "Teacher_Exam";  
    }  
    
    @RequestMapping(value="search_title",method = RequestMethod.GET)  
    public String queryTitle(ModelMap map) {  
    	map.addAttribute("titlelist",examDao.findExam());
        return "Student_Exam";  

    }  
 
    @RequestMapping(value="search_exam1",method = RequestMethod.GET)  
    public String findExamByExamId1(ModelMap map,String examid) {
    	int e=Integer.valueOf(examid);
    	List<Exam> exams=examDao.findExamByExamId(e);
    	Exam exam=exams.get(0);
       	map.addAttribute("exam",exam);
        return "Student_TakeExam";  

    }  
    
}
