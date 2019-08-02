package dao.impl;

import java.util.List;

import javax.annotation.Resource;

import org.hibernate.SessionFactory;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import dao.ChoiceDao;
import entity.Choice;
import entity.Exam;

@Service("scDao")
public class ChoiceDaoImpl extends HibernateDaoSupport implements ChoiceDao{

	@Resource
	public void setMySessionFactory(SessionFactory sessionFactory){  
		super.setSessionFactory(sessionFactory);
	}
	@Override
	public List<Choice> findAll() {
		return (List<Choice>)this.getHibernateTemplate().find("from entity.Choice");
	}
	@Override
	public List<Choice> findChoiceByCid(int cid) {
		return (List<Choice>) this.getHibernateTemplate().find("from entity.Choice Where cid='"+cid+"'");
	}
	@Transactional
	public void saveChoice(Choice choice) {
	
			this.getHibernateTemplate().save(choice);
		}
	 @Transactional
		public void deleteChoiceByCid(int cid) {
		 Choice choice=(Choice)this.getHibernateTemplate().get(Choice.class, cid);
			if(choice!=null){
				this.getHibernateTemplate().delete(choice);
			}
		}
	
}
