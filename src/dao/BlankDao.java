package dao;

import java.util.List;

import entity.Blank;
import entity.Choice;

public interface BlankDao {

	public List findAll();
	public List<Blank> findBlankByBid(int bid);
	public void saveBlank(Blank blank);
	public void deleteBlankByBid(int bid);
}