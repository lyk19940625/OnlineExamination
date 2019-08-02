package dao.impl;

import java.util.List;

import javax.annotation.Resource;

import org.hibernate.SessionFactory;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import dao.ExamDao;
import entity.Exam;

@Service("examDao")
public class ExamDaoImpl extends HibernateDaoSupport implements ExamDao{

	@Resource
	public void setMySessionFactory(SessionFactory sessionFactory){  
		super.setSessionFactory(sessionFactory);
	}

	@Transactional
	public void saveExam(Exam exam) {
			this.getHibernateTemplate().save(exam);
		}
	
	@Override
	public List findExam() {
		return (List<Exam>)this.getHibernateTemplate().find("from entity.Exam");
	}
	@Override
	public List findExamByExamId(int examid) {
		return (List<Exam>)this.getHibernateTemplate().find("from entity.Exam Where examid='"+examid+"'");
		

		}
	
}


