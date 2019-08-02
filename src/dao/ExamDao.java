package dao;

import java.util.List;

import entity.Exam;

public interface ExamDao {
	public void saveExam(Exam exam);
	public List findExam();
	public List findExamByExamId(int examid);
}