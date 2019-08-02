package dao;

import java.util.List;

import entity.Finish;
import entity.User;

public interface FinishDao {
	public void saveFinish(Finish finish);

	public List findFinish();
	public void editFinish(Finish finish);
	public List findFinishById(int finishid);
	public List findFinishByState();
	public List findFinishByUname(String uname);
}