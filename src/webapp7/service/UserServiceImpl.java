package webapp7.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import webapp7.dao.UserDao;
import webapp7.entity.Users;

@Service
public class UserServiceImpl implements UserService {
	
	@Autowired
	private UserDao dao;

	@Override
	@Transactional
	public List<Users> getDetails() {
		
		return dao.getDetails();
		
	}

	@Override
	@Transactional
	public void saveEntry(Users table) {
		
		dao.saveEntry(table);

	}

}
