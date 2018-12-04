package webapp7.service;

import java.util.List;

import webapp7.entity.Users;

public interface UserService {
	
	public List<Users> getDetails();
	
	public void saveEntry(Users table);

}
