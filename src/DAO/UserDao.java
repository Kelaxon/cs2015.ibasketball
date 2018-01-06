package DAO;

import java.util.List;

import Hibernate.PO.Userinfo;

public interface UserDao {
	public void delete(Userinfo userinfo);
	public void saveOrUpdate(Userinfo userinfo);
	public List<Userinfo> listAll();
	public Userinfo listById(int userId);
	public Boolean isExist(String username, String password);
	public Userinfo getByName(String username);
}
