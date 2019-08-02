package controller;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;  
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;  
import org.springframework.web.bind.annotation.RequestMethod; 

import dao.UserDao;
import entity.User;


@Controller  
@RequestMapping("manager") 
public class ManagerController {
	@Resource
    private UserDao userDao;
   
    @RequestMapping(value="query_student",method = RequestMethod.GET)  
    public String queryStudent(ModelMap map) {  
    	map.addAttribute("studentlist",userDao.findStudentByUtype());
        return "Manager_Student";  
    }
        @RequestMapping(value="query_teacher",method = RequestMethod.GET)  
        public String queryTeacher(ModelMap map) {  
        	map.addAttribute("teacherlist",userDao.findTeacherByUtype());
            return "Manager_Teacher";  

    }  
        @RequestMapping(value="query_manager",method = RequestMethod.GET)  
        public String queryManager(ModelMap map) {  
        	map.addAttribute("managerlist",userDao.findManagerByUtype());
            return "Manager_Manager";  

    }  
        @RequestMapping(value="/save",method = RequestMethod.POST)  
  	  public String saveUser(User user) {  
      	userDao.saveUser(user);
          return "Manager";  
      }  
        @RequestMapping(value="deleteS",method = RequestMethod.GET)  
        public String deleteStudentByUid(String uid) {
        	int u=Integer.valueOf(uid);
        	userDao.deleteUserByUid(u);
        	return "redirect:query_student"; 
        }
        @RequestMapping(value="deleteT",method = RequestMethod.GET)  
        public String deleteTeacherByUid(String uid) {
        	int u=Integer.valueOf(uid);
        	userDao.deleteUserByUid(u);
        	return "redirect:query_teacher"; 
        }
        @RequestMapping(value="delete",method = RequestMethod.GET)  
        public String deleteUserByUid(String uid) {
        	int u=Integer.valueOf(uid);
        	userDao.deleteUserByUid(u);
        	return "Manager_Search"; 
        }
        @RequestMapping(value="/query_user" , method = RequestMethod.POST)  
        public String queryUser(ModelMap map,String Uname) {
         	List<User> user=userDao.findUserByUname(Uname);
        	map.addAttribute("userlist",user);
            return "Manager_Edit";  
        	
        } 
        @RequestMapping(value="/edit_user",method = RequestMethod.POST)  
        public String editUser(User user) {  
        	userDao.editUser(user);
            return "Manager_Search";  
        }  
}
