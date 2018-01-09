package dao;

import java.util.List;
import java.util.Map;


public interface DAO {
	
	// ����ע��
	public void setClass(Class<?> entityClass);
	
	// ȡ���ض�
	public <T> T getById(int id);
	
	// ˢ��ȫ��
	public <T> List<T> listAll();
	// ɾ��
	public void delete(int id);
	// ���»����
	public <T> void saveOrUpdate(T t);
	// ����
	public <T> List<T> find(Map<String, String> map, int option) ;

	
}
