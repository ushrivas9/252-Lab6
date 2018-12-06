package webapp7.dao;

import java.util.List;

import webapp7.entity.Data;

public interface DataDao {
	
	public List<Data> getDetails(String user);
	
	public void saveEntry(Data table);
	
	public void deleteEntry(String user);

}
