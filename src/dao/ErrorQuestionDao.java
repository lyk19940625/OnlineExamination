package dao;

import java.util.List;

import entity.ErrorQuestion;

public interface ErrorQuestionDao {

	public void saveErrorQuestion(ErrorQuestion errorquestion);
	public List findChoice();
	public List findBlank();
	public List findReading();
}