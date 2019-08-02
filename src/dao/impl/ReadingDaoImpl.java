package dao.impl;

import java.util.List;

import javax.annotation.Resource;

import org.hibernate.SessionFactory;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;
import org.springframework.stereotype.Service;




import org.springframework.transaction.annotation.Transactional;

import dao.ReadingDao;
import entity.Reading;

@Service("srDao")
public class ReadingDaoImpl extends HibernateDaoSupport implements  ReadingDao{

	@Resource
	public void setMySessionFactory(SessionFactory sessionFactory){  
		super.setSessionFactory(sessionFactory);
	}
	@Override
	public List<Reading> findAll() {
		return (List<Reading>)this.getHibernateTemplate().find("from entity.Reading");
	}
	@Override
	public List<Reading> findReadingByRid(int rid) {
		return (List<Reading>) this.getHibernateTemplate().find("from entity.Reading Where rid='"+rid+"'");
	}
	@Transactional
	public void saveReading(Reading reading) {
	
			this.getHibernateTemplate().save(reading);
		}
	 @Transactional
		public void deleteReadingByRid(int rid) {
		 Reading reading=(Reading)this.getHibernateTemplate().get(Reading.class, rid);
			if(reading!=null){
				this.getHibernateTemplate().delete(reading);
			}
		}
}
