package Component;

import java.util.Map;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

import com.opensymphony.xwork2.ActionContext;

public class FasadeCDU {
	private Configuration configuration;
	private SessionFactory sessionFactory;
	public Session session;
	public Transaction transaction;
	public Query query;
	public ActionContext context;
	@SuppressWarnings("rawtypes")
	public Map sessionScope;
	
	public void startConn() {
		configuration = new Configuration().configure();
		sessionFactory = configuration.buildSessionFactory();
		session = sessionFactory.openSession();
		transaction = session.beginTransaction();
		context = ActionContext.getContext();
		sessionScope = context.getSession();
	}

	public void closeConn() {
		transaction.commit();
		//session.close();
	}

	public void createQuery(String hql) {
		query = session.createQuery(hql);
	}
	
	public void createSQLQuery(String sql){
		query = session.createSQLQuery(sql);
	}
}
