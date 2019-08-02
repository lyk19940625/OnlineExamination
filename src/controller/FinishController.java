package controller;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;  
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;  
import org.springframework.web.bind.annotation.RequestMethod;

import dao.FinishDao;
import entity.Exam;
import entity.Finish;
import entity.User;


@Controller  
@RequestMapping("/finish") 
public class FinishController {
	@Resource
    private FinishDao finishDao; 
	   @RequestMapping(value="/student_save",method = RequestMethod.POST)  
	  public String saveFinish(Finish finish) {  
    	finishDao.saveFinish(finish);
        return "Student";  
    }  
	   @RequestMapping(value="search",method = RequestMethod.GET)  
	    public String findFinish(ModelMap map) {
		  
	       	map.addAttribute("finishlist",finishDao.findFinish());
	        return "Teacher_StudentExam";  

	    }  
	   @RequestMapping(value="search1",method = RequestMethod.GET)  
	    public String findFinishByState(ModelMap map) {
		  
	       	map.addAttribute("finishlist",finishDao.findFinishByState());
	        return "Teacher_StudentScore";  

	    }  
	   @RequestMapping(value="search2",method = RequestMethod.GET)  
	    public String findFinishByUname(ModelMap map,HttpSession session,HttpServletRequest request) {
		  User user=(User) request.getSession().getAttribute("user");
		  String uname=user.getUname();
		  List<Finish> finishlist=finishDao.findFinishByUname(uname);
	       	map.addAttribute("finishlist",finishlist);
	        return "Student_MyScore";  

	    }  
	   @RequestMapping(value="search_finish",method = RequestMethod.GET)  
	    public String findFinishById(ModelMap map,HttpServletRequest request) {
		   int f=Integer.parseInt(request.getParameter("finishid"));
		    Finish finish=(Finish)finishDao.findFinishById(f).get(0);
	       	map.addAttribute("finish",finish);
	        return "Teacher_Correct";  

	    }  
	   @RequestMapping(value="search_finish1",method = RequestMethod.GET)  
	    public String findFinish1ById(ModelMap map,HttpServletRequest request) {
		   int f=Integer.parseInt(request.getParameter("finishid"));
		    Finish finish=(Finish)finishDao.findFinishById(f).get(0);
	       	map.addAttribute("finish",finish);
	        return "Teacher_SearchFinish";  

	    }  
	   @RequestMapping(value="search_finish2",method = RequestMethod.GET)  
	    public String findFinish2ById(ModelMap map,HttpServletRequest request) {
		   int f=Integer.parseInt(request.getParameter("finishid"));
		    Finish finish=(Finish)finishDao.findFinishById(f).get(0);
	       	map.addAttribute("finish",finish);
	        return "Student_SearchFinish";  

	    }  
	   @RequestMapping(value="/edit_finish",method = RequestMethod.POST)  
       public String editFinish(Finish finish,HttpServletRequest request,HttpSession session) {  
           finishDao.editFinish(finish);
          
           return "redirect:/finish/search";  
       }  
}
