package dao.impl;

import java.util.List;

import javax.annotation.Resource;

import org.hibernate.SessionFactory;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;
import org.springframework.stereotype.Service;




import org.springframework.transaction.annotation.Transactional;

import dao.BlankDao;
import entity.Blank;

@Service("sbDao")
public class BlankDaoImpl extends HibernateDaoSupport implements  BlankDao{

	@Resource
	public void setMySessionFactory(SessionFactory sessionFactory){  
		super.setSessionFactory(sessionFactory);
	}
	@Override
	public List<Blank> findAll() {
		return (List<Blank>)this.getHibernateTemplate().find("from entity.Blank");
	}
	@Override
	public List<Blank> findBlankByBid(int bid) {
		return (List<Blank>) this.getHibernateTemplate().find("from entity.Blank Where bid='"+bid+"'");
	}
	@Transactional
	public void saveBlank(Blank blank) {
	
			this.getHibernateTemplate().save(blank);
		}
	 @Transactional
		public void deleteBlankByBid(int bid) {
		 Blank blank=(Blank)this.getHibernateTemplate().get(Blank.class, bid);
			if(blank!=null){
				this.getHibernateTemplate().delete(blank);
			}
		}

		}



