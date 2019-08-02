package dao;

import java.util.List;

import entity.User;

public interface UserDao {

	public List findStudentByUtype();
	public List findTeacherByUtype();
	public List findManagerByUtype();
	public List findPasswordByAccount(String account);
	public void saveUser(User user);
	public void deleteUserByUid(int uid);
	public List findUserByUname(String uname);
	public void editUser(User user);
	
}