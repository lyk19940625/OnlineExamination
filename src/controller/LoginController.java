package controller;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;  
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;  
import org.springframework.web.bind.annotation.RequestMethod;

import dao.UserDao;
import entity.User;


@Controller  
@RequestMapping("/login") 
public class LoginController {
	@Resource
    private UserDao userDao; 
	@RequestMapping(value="/check" , method = RequestMethod.GET)  
    public String queryUser(ModelMap map,String username,String password,HttpServletRequest req) {
    	List<User> user=userDao.findPasswordByAccount(username);
    	User u = user.get(0);
    	 HttpSession session=req.getSession();
 	    session.setAttribute("user", u);
    	if(u.getPassword().equals(password)){
    		if(u.getUtype().equals("manager")){
    			return"Manager";
    		}
    		if(u.getUtype().equals("student")){
    			return"Student";
    			
    		}
    		if(u.getUtype().equals("teacher")){
    			return"Teacher";
    		
    	}
    	}
        return "Login";  
    } 
}
