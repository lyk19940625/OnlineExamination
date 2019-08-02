package controller;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;  
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;  
import org.springframework.web.bind.annotation.RequestMethod; 

import dao.*;
import entity.*;


@Controller  
@RequestMapping("teacher_all") 
public class TeacherAllController {
	@Resource
     private ChoiceDao cDao;
	@Resource 
	private BlankDao bDao;
	@Resource 
	private ReadingDao rDao;
   
    @RequestMapping(value="query",method = RequestMethod.GET)  
    public String queryAll(ModelMap map) {  
    	map.addAttribute("choicelist",cDao.findAll());
    	map.addAttribute("blanklist",bDao.findAll());
    	map.addAttribute("readinglist",rDao.findAll());
        return "Teacher_All";  

    }  
    @RequestMapping(value="deleteC",method = RequestMethod.GET)  
    public String deleteChoiceByCid(String cid) {
    	int c=Integer.valueOf(cid);
    	cDao.deleteChoiceByCid(c);
    	return "redirect:query"; 
    }
    @RequestMapping(value="deleteB",method = RequestMethod.GET)  
    public String deleteBlankByBid(String bid) {
    	int b=Integer.valueOf(bid);
    	bDao.deleteBlankByBid(b);
    	return "redirect:query"; 
    }
    @RequestMapping(value="deleteR",method = RequestMethod.GET)  
    public String deleteReadingByRid(String rid) {
    	int r=Integer.valueOf(rid);
    	rDao.deleteReadingByRid(r);
    	return "redirect:query"; 
    }
    @RequestMapping(value="search",method = RequestMethod.GET)  
    public String searchAll(ModelMap map) {  
    	map.addAttribute("choicelist",cDao.findAll());
    	map.addAttribute("blanklist",bDao.findAll());
    	map.addAttribute("readinglist",rDao.findAll());
        return "Teacher_Search";  

    }  
}
