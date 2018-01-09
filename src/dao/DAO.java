package dao;

import java.util.List;
import java.util.Map;


public interface DAO {
	
	// 依赖注入
	public void setClass(Class<?> entityClass);
	
	// 取得特定
	public <T> T getById(int id);
	
	// 刷新全部
	public <T> List<T> listAll();
	// 删除
	public void delete(int id);
	// 更新或添加
	public <T> void saveOrUpdate(T t);
	// 查找
	public <T> List<T> find(Map<String, String> map, int option) ;

	
}
