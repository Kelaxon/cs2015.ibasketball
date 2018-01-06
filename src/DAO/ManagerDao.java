package DAO;

import Hibernate.PO.Managerinfo;

public interface ManagerDao {
	public Boolean isExist(String username, String password);
	public Managerinfo getByName(String username);
}
