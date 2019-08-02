package dao.impl;

import java.util.List;

import javax.annotation.Resource;

import org.hibernate.SessionFactory;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import dao.ErrorQuestionDao;
import entity.ErrorQuestion;

@Service("errorDao")
public class ErrorQuestionDaoImpl extends HibernateDaoSupport implements ErrorQuestionDao{

	@Resource
	public void setMySessionFactory(SessionFactory sessionFactory){  
		super.setSessionFactory(sessionFactory);
	}

	@Transactional
	public void saveErrorQuestion(ErrorQuestion errorquestion) {
	
			this.getHibernateTemplate().save(errorquestion);
		}
	@Override
	public List<ErrorQuestion> findChoice() {
		return (List<ErrorQuestion>)this.getHibernateTemplate().find("from entity.ErrorQuestion Where type='choice'");
       }
	@Override
	public List<ErrorQuestion> findBlank() {
		return (List<ErrorQuestion>)this.getHibernateTemplate().find("from entity.ErrorQuestion Where type='blank'");
       }
	@Override
	public List<ErrorQuestion> findReading() {
		return (List<ErrorQuestion>)this.getHibernateTemplate().find("from entity.ErrorQuestion Where type='reading'");
       }
}