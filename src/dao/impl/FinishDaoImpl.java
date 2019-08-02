package dao.impl;

import java.util.List;

import javax.annotation.Resource;

import org.hibernate.SessionFactory;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import dao.FinishDao;
import entity.Finish;
import entity.User;

@Service("finishDao")
public class FinishDaoImpl extends HibernateDaoSupport implements FinishDao{

	@Resource
	public void setMySessionFactory(SessionFactory sessionFactory){  
		super.setSessionFactory(sessionFactory);
	}
	@Transactional
	public void saveFinish(Finish finish) {
	
			this.getHibernateTemplate().save(finish);
		}
	@Override
	public List findFinish() {
		return (List<Finish>)this.getHibernateTemplate().find("from entity.Finish");
	}
	@Override
	public List findFinishById(int finishid) {
		return (List<Finish>)this.getHibernateTemplate().find("from entity.Finish where finishid='"+finishid+"'");
	}
	@Override
	public List findFinishByUname(String uname) {
		return (List<Finish>)this.getHibernateTemplate().find("from entity.Finish where uname='"+uname+"'");
	}
	@Override
	public List findFinishByState() {
		return (List<Finish>)this.getHibernateTemplate().find("from entity.Finish where state='ÒÑÅú¸Ä'");
	}
	@Transactional
	public void editFinish(Finish finish) {
		if(finish!=null){
			this.getHibernateTemplate().update(finish);
		}
	}
   
}