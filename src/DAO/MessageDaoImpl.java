package DAO;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

import Component.FasadeCDU;
import Hibernate.PO.Userinfo;
import Hibernate.PO.Usermessagenew;

public class MessageDaoImpl implements MessageDao {
	private FasadeCDU cdu;

	public MessageDaoImpl() {
		cdu = new FasadeCDU();
	}

	@Override
	public void delete(int umnId) {
		cdu.startConn();
		try {
			Usermessagenew message = (Usermessagenew) cdu.session.get(Usermessagenew.class, umnId);
			System.out.println("delete:" + message.getMessageContent());
			cdu.session.delete(message);
		} catch (Exception e) {
			cdu.transaction.rollback();
			e.printStackTrace();
		}finally {
			cdu.closeConn();
		}

	}

	@Override
	@SuppressWarnings("unchecked")
	public List<Usermessagenew> listAll() {
		List<Usermessagenew> messageList = null;
		cdu.startConn();
		try {
			cdu.createQuery("from Usermessagenew");
			messageList = cdu.query.list();
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			cdu.closeConn();
		}
		return messageList;
	}

	@Override
	public void saveOrUpdate(Usermessagenew message) {
		cdu.startConn();
		try {
			cdu.session.saveOrUpdate(message);
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			cdu.closeConn();
		}
	}

	@Override
	public List<Usermessagenew> listById(int userId) {
		cdu.startConn();
		List<Usermessagenew> messageList = null;
		try {
			Userinfo userinfo = (Userinfo) cdu.session.get(Userinfo.class, userId);
			messageList = new ArrayList<>();
			messageList.addAll(userinfo.getUsermessagenews());
			Collections.sort(messageList);
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			cdu.closeConn();
		}
		return messageList;
	}


}
