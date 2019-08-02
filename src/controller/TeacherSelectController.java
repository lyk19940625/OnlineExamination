package controller;
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
@RequestMapping("teacher_select") 
public class TeacherSelectController {
	@Resource
    private ChoiceDao cDao;
	@Resource
    private BlankDao bDao;
	@Resource
    private ReadingDao rDao;
	
	
	
	@RequestMapping(value="add0",method = RequestMethod.GET)  
	public String addTitle0(ModelMap map,HttpServletRequest request,HttpSession session) { 
		String examtitle=request.getParameter("examtitle");
	    session.setAttribute("examtitle",examtitle);
	    String teacher=request.getParameter("eteacher");
	    session.setAttribute("eteacher",teacher);
	    String time=request.getParameter("time");
	    session.setAttribute("time",time);
	    String score=request.getParameter("score");
	    session.setAttribute("score",score);
	    return "redirect:../teacher_all/query";  
	}
@RequestMapping(value="add1",method = RequestMethod.GET)  
public String addTitle1(ModelMap map,HttpServletRequest request,HttpSession session) {  
    session.setAttribute("sign", "1");
    return "redirect:../teacher_all/query";  
}
@RequestMapping(value="add2",method = RequestMethod.GET)  
public String addTitle2(ModelMap map,HttpServletRequest request,HttpSession session) {  
    session.setAttribute("sign", "2");
    return "redirect:../teacher_all/query";  
}
@RequestMapping(value="add3",method = RequestMethod.GET)  
public String addTitle3(ModelMap map,HttpServletRequest request,HttpSession session) {  
    session.setAttribute("sign", "3");
    return "redirect:../teacher_all/query";  
}
@RequestMapping(value="add4",method = RequestMethod.GET)  
public String addTitle4(ModelMap map,HttpServletRequest request,HttpSession session) {  
    session.setAttribute("sign", "4");
    return "redirect:../teacher_all/query";  
}
@RequestMapping(value="add5",method = RequestMethod.GET)  
public String addTitle5(ModelMap map,HttpServletRequest request,HttpSession session) {  
    session.setAttribute("sign", "5");
    return "redirect:../teacher_all/query";  
}
@RequestMapping(value="add6",method = RequestMethod.GET)  
public String addTitle6(ModelMap map,HttpServletRequest request,HttpSession session) {  
    session.setAttribute("sign", "6");
    return "redirect:../teacher_all/query";  
}
@RequestMapping(value="add7",method = RequestMethod.GET)  
public String addTitle7(ModelMap map,HttpServletRequest request,HttpSession session) {  
    session.setAttribute("sign", "7");
    return "redirect:../teacher_all/query";  
}
@RequestMapping(value="add8",method = RequestMethod.GET)  
public String addTitle8(ModelMap map,HttpServletRequest request,HttpSession session) {  
    session.setAttribute("sign", "8");
    return "redirect:../teacher_all/query";  
}
@RequestMapping(value="add9",method = RequestMethod.GET)  
public String addTitle9(ModelMap map,HttpServletRequest request,HttpSession session) {  
    session.setAttribute("sign", "9");
    return "redirect:../teacher_all/query";  
}
@RequestMapping(value="add10",method = RequestMethod.GET)  
public String addTitle10(ModelMap map,HttpServletRequest request,HttpSession session) {  
    session.setAttribute("sign", "10");
    return "redirect:../teacher_all/query";  
}
@RequestMapping(value="add1toPaper",method = RequestMethod.GET)  
public String add1toPaper(HttpSession session,HttpServletRequest request) {  
	int cid=Integer.parseInt(request.getParameter("cid"));
	Choice choice=cDao.findChoiceByCid(cid).get(0);
	if(session.getAttribute("sign").equals("1")){
	session.setAttribute("select_title1", choice.getCtitle());
	session.setAttribute("select_choicea1", choice.getA());
	session.setAttribute("select_choiceb1", choice.getB());
	session.setAttribute("select_choicec1", choice.getC());
	session.setAttribute("select_choiced1", choice.getD());
	}
	if(session.getAttribute("sign").equals("2")){
		session.setAttribute("select_title2", choice.getCtitle());
		session.setAttribute("select_choicea2", choice.getA());
		session.setAttribute("select_choiceb2", choice.getB());
		session.setAttribute("select_choicec2", choice.getC());
		session.setAttribute("select_choiced2", choice.getD());
	}
	if(session.getAttribute("sign").equals("3")){
		session.setAttribute("select_title3", choice.getCtitle());
		session.setAttribute("select_choicea3", choice.getA());
		session.setAttribute("select_choiceb3", choice.getB());
		session.setAttribute("select_choicec3", choice.getC());
		session.setAttribute("select_choiced3", choice.getD());
	}
	if(session.getAttribute("sign").equals("4")){
		session.setAttribute("select_title4", choice.getCtitle());
		session.setAttribute("select_choicea4", choice.getA());
		session.setAttribute("select_choiceb4", choice.getB());
		session.setAttribute("select_choicec4", choice.getC());
		session.setAttribute("select_choiced4", choice.getD());
	}
	if(session.getAttribute("sign").equals("5")){
		session.setAttribute("select_title5", choice.getCtitle());
		session.setAttribute("select_choicea5", choice.getA());
		session.setAttribute("select_choiceb5", choice.getB());
		session.setAttribute("select_choicec5", choice.getC());
		session.setAttribute("select_choiced5", choice.getD());
	}
    return "Teacher_Exam";  
}

@RequestMapping(value="add2toPaper",method = RequestMethod.GET)  
public String add2toPaper(HttpSession session,HttpServletRequest request) {  
	int bid=Integer.parseInt(request.getParameter("bid"));
	Blank blank=bDao.findBlankByBid(bid).get(0);
	if(session.getAttribute("sign").equals("6")){
		session.setAttribute("select_title6", blank.getBtitle());
		session.setAttribute("select_answer6", blank.getBanswer());
	}
	if(session.getAttribute("sign").equals("7")){
		session.setAttribute("select_title7", blank.getBtitle());
		session.setAttribute("select_answer7", blank.getBanswer());
	}
	if(session.getAttribute("sign").equals("8")){
		session.setAttribute("select_title8", blank.getBtitle());
		session.setAttribute("select_answer8", blank.getBanswer());
	}
	   return "Teacher_Exam";  
    }
@RequestMapping(value="add3toPaper",method = RequestMethod.GET)  
public String add3toPaper(HttpSession session,HttpServletRequest request) {  
	int rid=Integer.parseInt(request.getParameter("rid"));
	Reading reading=rDao.findReadingByRid(rid).get(0);

	if(session.getAttribute("sign").equals("9")){
		session.setAttribute("select_title9", reading.getRtitle());
		session.setAttribute("select_answer9", reading.getRanswer());
	}
	if(session.getAttribute("sign").equals("10")){
		session.setAttribute("select_title10", reading.getRtitle());
		session.setAttribute("select_answer10", reading.getRanswer());
	}
	   return "Teacher_Exam";  
    }

}
  
