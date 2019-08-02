package controller;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import java.util.List;

import org.springframework.stereotype.Controller;  
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;  
import org.springframework.web.bind.annotation.RequestMethod; 

import dao.BlankDao;
import dao.ChoiceDao;
import dao.ErrorQuestionDao;
import dao.ReadingDao;
import entity.Blank;
import entity.Choice;
import entity.ErrorQuestion;
import entity.Reading;

@Controller  
@RequestMapping("/errorquestion") 
public class ErrorQuestionController {
	@Resource
    private ErrorQuestionDao errorDao; 
	@Resource
	private ChoiceDao choiceDao;
	@Resource
	private BlankDao blankDao;
	@Resource
	private ReadingDao readingDao;
	   @RequestMapping(value="/save_choice",method = RequestMethod.GET)  
	  public String saveErrorQuestionC(ErrorQuestion errorquestion,HttpServletRequest request) { 
		int cid=Integer.parseInt(request.getParameter("cid"));
		Choice choice=(Choice) choiceDao.findChoiceByCid(cid).get(0);
		errorquestion.setType("choice");
		errorquestion.setCtitle(choice.getCtitle());
		errorquestion.setChoicea(choice.getA());
		errorquestion.setChoiceb(choice.getB());
		errorquestion.setChoicec(choice.getC());
		errorquestion.setChoiced(choice.getD());
		errorquestion.setAnswer(choice.getCanswer());
    	errorDao.saveErrorQuestion(errorquestion);
        return "redirect:/student_choice/query";  
    }  
	   @RequestMapping(value="/save_blank",method = RequestMethod.GET)  
		  public String saveErrorQuestionB(ErrorQuestion errorquestion,HttpServletRequest request) { 
			int bid=Integer.parseInt(request.getParameter("bid"));
			Blank blank=(Blank) blankDao.findBlankByBid(bid).get(0);
			errorquestion.setType("blank");
			errorquestion.setBtitle(blank.getBtitle());
			errorquestion.setAnswer(blank.getBanswer());
	    	errorDao.saveErrorQuestion(errorquestion);
	        return "redirect:/student_blank/query";  
	    }  
	   @RequestMapping(value="/save_reading",method = RequestMethod.GET)  
		  public String saveErrorQuestionR(ErrorQuestion errorquestion,HttpServletRequest request) { 
			int rid=Integer.parseInt(request.getParameter("rid"));
			Reading reading=(Reading) readingDao.findReadingByRid(rid).get(0);
			errorquestion.setType("reading");
			errorquestion.setRtitle(reading.getRtitle());
			errorquestion.setAnswer(reading.getRanswer());
	    	errorDao.saveErrorQuestion(errorquestion);
	        return "redirect:/student_reading/query";  
	    } 
	
	   @RequestMapping(value="query",method = RequestMethod.GET)  
	    public String queryError(ModelMap map) { 
	    	map.addAttribute("choicelist",errorDao.findChoice());
	    	map.addAttribute("blanklist",errorDao.findBlank());
	    	map.addAttribute("readinglist",errorDao.findReading());
	        return "Student_ErrorAll";  

	    }  

}

