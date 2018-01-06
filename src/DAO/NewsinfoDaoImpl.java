package DAO;

import java.util.List;

import Component.FasadeCDU;
import Hibernate.PO.Newsinfo;

public class NewsinfoDaoImpl implements NewsinfoDao {
	private FasadeCDU cdu;
	private int times = 0;
	private int interval = 3;

	@Override
	public Newsinfo listById(int newsId) {
		cdu.startConn();
		Newsinfo newsinfo = null;
		try {
			newsinfo = (Newsinfo) cdu.session.get(Newsinfo.class, newsId);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			cdu.closeConn();
		}
		return newsinfo;
	}

	@Override
	@SuppressWarnings("unchecked")
	public List<Newsinfo> listAll() {
		cdu.startConn();
		List<Newsinfo> newsList = null;
		try {
			cdu.createQuery("from Newsinfo");
			// cdu.createSQLQuery("select * from newsinfo limit ?, ?;");
			// int x = times*interval;
			// cdu.query.setInteger(0, x);
			// cdu.query.setInteger(1, x+interval);
			newsList = cdu.query.list();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			cdu.closeConn();
		}
		return newsList;
	}

	public NewsinfoDaoImpl() {
		cdu = new FasadeCDU();
		cdu.startConn();
	}

	@Override
	public void saveOrUpdate(Newsinfo newsinfo) {
		cdu.startConn();
		try {
			cdu.session.save(newsinfo);
		} catch (Exception e) {
			cdu.transaction.rollback();
			e.printStackTrace();
		} finally {
			cdu.closeConn();
		}
	}

	@Override
	public void delete(Newsinfo newsinfo) {
		cdu.startConn();
		try {
			cdu.session.delete(newsinfo);
		} catch (Exception e) {
			cdu.transaction.rollback();
			e.printStackTrace();
		} finally {
			cdu.closeConn();
		}
	}
}
