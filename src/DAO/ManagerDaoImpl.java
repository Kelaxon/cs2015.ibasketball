package DAO;

import java.util.List;

import Component.FasadeCDU;
import Hibernate.PO.Managerinfo;

public class ManagerDaoImpl implements ManagerDao {
	private FasadeCDU cdu;

	public ManagerDaoImpl() {
		cdu = new FasadeCDU();
		cdu.startConn();
	}


	@Override
	@SuppressWarnings("unchecked")
	public Boolean isExist(String username, String password) {
		cdu.startConn();
		try {
			cdu.createQuery("from Managerinfo m where m.magId=? and m.magPassword=?");
			cdu.query.setString(0, username);
			cdu.query.setString(1, password);
			List<Managerinfo> users = cdu.query.list();
			if (users.size() == 1) {
				return true;
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			cdu.closeConn();
		}
		return false;
	}

	@Override
	@SuppressWarnings("unchecked")
	public Managerinfo getByName(String username) {
		cdu.startConn();
		Managerinfo managerinfo = null;
		try {
			cdu.createQuery("from Managerinfo m where m.magId=?");
			cdu.query.setString(0, username);
			List<Managerinfo> managers = cdu.query.list();
			if (managers.size() == 1) {
				managerinfo = managers.get(0);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			cdu.closeConn();
		}
		return managerinfo;
	}

}
