package webapp7.service;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import testing.daysData;
import webapp7.dao.DataDao;
import webapp7.entity.Data;

@Service
public class DataServiceImpl implements DataService {
	
	@Autowired
	private DataDao dao;

	@Override
	@Transactional
	public List<Data> getDetails(String user) {
		
		return dao.getDetails(user);
		
	}

	@Override
	@Transactional
	public void saveEntry(Data table) {
		
		dao.saveEntry(table);

	}

	@Override
	@Transactional
	public void deleteEntry(int id) {
		
		dao.deleteEntry(id);

	}

}
