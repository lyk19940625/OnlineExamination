package dao;

import java.util.List;

import entity.Choice;



public interface ChoiceDao {

	public List findAll();
	public List<Choice> findChoiceByCid(int cid);
	public void saveChoice(Choice choice);
	public void deleteChoiceByCid(int cid);
}