package webapp7.service;

import java.util.List;

import webapp7.entity.Data;



public interface DataService {
	
	public List<Data> getDetails(String user);
	
	public void saveEntry(Data table);
	
	public void deleteEntry(int id);

}
