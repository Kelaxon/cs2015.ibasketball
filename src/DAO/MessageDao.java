package DAO;

import java.util.List;

import Hibernate.PO.Usermessagenew;

public interface MessageDao {
	public void delete(int umnId);
	public void saveOrUpdate(Usermessagenew message);
	public List<Usermessagenew> listAll();
	public List<Usermessagenew> listById(int userId);
}
