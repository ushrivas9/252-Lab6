package webapp7.dao;

import java.util.List;

import webapp7.entity.Users;


public interface UserDao {
	
	public List<Users> getDetails();
	
	public void saveEntry(Users table);
	
	public void deleteEntry(String user);

}
