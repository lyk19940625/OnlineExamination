package dao;

import java.util.List;

import entity.Choice;
import entity.Reading;

public interface ReadingDao {

	public List findAll();
	public List<Reading> findReadingByRid(int rid);
	public void saveReading(Reading reading);
	public void deleteReadingByRid(int rid);
}