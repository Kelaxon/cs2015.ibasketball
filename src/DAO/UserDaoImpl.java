package DAO;

import java.util.List;

import Component.FasadeCDU;
import Hibernate.PO.Userinfo;

public class UserDaoImpl implements UserDao {
	private FasadeCDU cdu;

	public UserDaoImpl() {
		cdu = new FasadeCDU();
		cdu.startConn();
	}

	@Override
	@SuppressWarnings("unchecked")
	public List<Userinfo> listAll() {
		cdu.startConn();
		List<Userinfo> userList = null;
		try {
			cdu.createQuery("from Usermessagenew");
			userList = cdu.query.list();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			cdu.closeConn();
		}
		return userList;
	}

	@Override
	public Userinfo listById(int userId) {
		cdu.startConn();
		Userinfo userinfo = null;
		try {
			userinfo = (Userinfo) cdu.session.get(Userinfo.class, userId);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			cdu.closeConn();
		}
		return userinfo;
	}

	@Override
	public void delete(Userinfo userinfo) {
		cdu.startConn();
		try {
			cdu.session.delete(userinfo);
		} catch (Exception e) {
			cdu.transaction.rollback();
			e.printStackTrace();
		} finally {
			cdu.closeConn();
		}
	}

	@Override
	public void saveOrUpdate(Userinfo userinfo) {
		cdu.startConn();
		try {
			// 用户未修改密码时，不提交密码修改
			if(userinfo.getUserPassword()==null)
				System.out.println("空");
			System.out.println(userinfo.getUserPassword()+"!");
			cdu.session.saveOrUpdate(userinfo);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			cdu.closeConn();
		}
	}

	@Override
	@SuppressWarnings("unchecked")
	public Boolean isExist(String username, String password) {
		cdu.startConn();
		try {
			cdu.createQuery("from Userinfo u where u.userName=? and u.userPassword=?");
			cdu.query.setString(0, username);
			cdu.query.setString(1, password);
			List<Userinfo> users = cdu.query.list();
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
	public Userinfo getByName(String username) {
		cdu.startConn();
		Userinfo userinfo = null;
		try {
			cdu.createQuery("from Userinfo u where u.userName=?");
			cdu.query.setString(0, username);
			List<Userinfo> users = cdu.query.list();
			if (users.size() == 1) {
				userinfo = users.get(0);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			cdu.closeConn();
		}
		return userinfo;
	}

}
