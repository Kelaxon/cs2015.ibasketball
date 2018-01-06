package DAO;

import java.util.List;

import Hibernate.PO.Newsinfo;

public interface NewsinfoDao {
	public Newsinfo listById(int newsId);
	public List<Newsinfo> listAll();
	public void delete(Newsinfo newsinfo);
	public void saveOrUpdate(Newsinfo newsinfo);
}
