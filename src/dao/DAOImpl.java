package dao;

import java.util.List;
import java.util.Map;
import java.util.Map.Entry;

import component.FasadeCDU;

public class DAOImpl<T> implements DAO {
	protected Class<T> entityClass;
	protected FasadeCDU cdu;
	public final static int FULL_MATCH = 0;
	public final static int FUZZY_MATCH = 1;

	public DAOImpl(Class<T> entityClass) {
		this.entityClass = entityClass;
		cdu = new FasadeCDU();
	}

	@Override
	@SuppressWarnings({ "unchecked", "hiding" })
	public <T> T getById(int id) {
		cdu.startConn();
		T t = null;
		try {
			t = (T) cdu.session.get(entityClass, id);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			cdu.closeConn();
		}
		return t;
	}

	@Override
	@SuppressWarnings({ "unchecked", "hiding" })
	public <T> List<T> listAll() {
		List<T> list = null;
		cdu.startConn();
		try {
			cdu.createQuery("from " + entityClass.getSimpleName());
			System.out.println(entityClass.getSimpleName());
			list = cdu.query.list();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			cdu.closeConn();
		}
		return list;
	}

	@Override
	public void delete(int id) {
		T t = getById(id); // 必须放在startConn之前！！
		cdu.startConn();
		try {
			if (t != null) {
				cdu.session.delete(t);
			}

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			cdu.closeConn();
		}
	}

	@Override
	@SuppressWarnings("hiding")
	public <T> void saveOrUpdate(T t) {
		cdu.startConn();
		try {
			if (t != null)
				cdu.session.saveOrUpdate(t);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			cdu.closeConn();
		}
	}

	public static final char UNDERLINE = '_';

	public static String camelToUnderline(String param) {
		if (param == null || "".equals(param.trim())) {
			return "";
		}
		int len = param.length();
		StringBuilder sb = new StringBuilder(len);
		for (int i = 0; i < len; i++) {
			char c = param.charAt(i);
			if (i == 0 && Character.isUpperCase(c)) {
				sb.append(Character.toLowerCase(c));
				continue;
			}
			if (Character.isUpperCase(c)) {
				sb.append(UNDERLINE);
				sb.append(Character.toLowerCase(c));
			} else {
				sb.append(c);
			}
		}
		return sb.toString();
	}

	@Override
	@SuppressWarnings("unchecked")
	public void setClass(Class<?> entityClass) {
		this.entityClass = (Class<T>) entityClass;
	}

	@Override
	@SuppressWarnings({ "unchecked", "hiding" })
	public <T> List<T> find(Map<String, String> map, int option) {

		cdu.startConn();
		List<T> list = null;
		System.out.println(entityClass.getSimpleName());
		System.out.println(camelToUnderline(entityClass.getSimpleName()));

		String hql = "from " + entityClass.getSimpleName();

		int count = 0;
		if (option == FULL_MATCH) {
			for (Entry<String, String> entry : map.entrySet()) {
				if (count == 0) {
					hql += " where " + entry.getKey() + " = '" + entry.getValue() + "'";
					count++;
				} else
					hql += " and " + entry.getKey() + " = '" + entry.getValue() + "'";
			}
		} else {
			// 模糊匹配
			for (Entry<String, String> entry : map.entrySet()) {
				if (count == 0) {
					hql += " where " + entry.getKey() + " like '%" + entry.getValue() + "%'";
					count++;
				} else {
					hql += " or " + entry.getKey() + " like '%" + entry.getValue() + "%'";
				}
			}
		}

		System.out.println(hql);
		try {
			cdu.createQuery(hql);
			list = cdu.query.list();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			cdu.closeConn();
		}
		return list;
	}
}