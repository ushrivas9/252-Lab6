package webapp7.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import webapp7.entity.Data;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;


@Repository
public class DataDaoImpl implements DataDao {
	
	@Autowired
	private SessionFactory sessionFactory;


	@Override
	public List<Data> getDetails(String user) {
		
		Session currentSession=sessionFactory.getCurrentSession();
		
		Query<Data> theQuery=currentSession.createQuery("from Data", Data.class);
		
		List<Data> details=theQuery.getResultList();
		
		for(int i=0;i<details.size();i++) {
			if(!details.get(i).getUser().equals(user)) {
				details.remove(details.get(i));
			}
		}
		
		return details;
		
	}

	@Override
	public void saveEntry(Data table) {
		
		Session currentSession=sessionFactory.getCurrentSession();
		
		currentSession.saveOrUpdate(table);

	}

	@Override
	public void deleteEntry(int week, String user) {
		
		Session currentSession=sessionFactory.getCurrentSession();
		
		Query<?> theQuery=currentSession.createQuery("delete from Data where user=:rId1 and week=:rId2");
			
		theQuery.setParameter("rId1", user);
		
		theQuery.setParameter("rId2", week);
			
		theQuery.executeUpdate();

	}

}
