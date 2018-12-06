package webapp7.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import webapp7.entity.Data;
import webapp7.entity.Users;

@Repository
public class UserDaoImpl implements UserDao {
	
	@Autowired
	private SessionFactory sessionFactory;

	@Override
	public List<Users> getDetails() {
		
		Session currentSession=sessionFactory.getCurrentSession();
		
		Query<Users> theQuery=currentSession.createQuery("from Users", Users.class);
		
		List<Users> details=theQuery.getResultList();
				
		return details;
		
	}

	@Override
	public void saveEntry(Users table) {
		
		Session currentSession=sessionFactory.getCurrentSession();
		
		currentSession.saveOrUpdate(table);

	}

}
