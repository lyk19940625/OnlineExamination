package dao.impl;

import java.util.List;

import javax.annotation.Resource;

import org.hibernate.SessionFactory;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import dao.PointDao;
import entity.Point;

@Service("pointDao")
public class PointDaoImpl extends HibernateDaoSupport implements PointDao{

	@Resource
	public void setMySessionFactory(SessionFactory sessionFactory){  
		super.setSessionFactory(sessionFactory);
	}
	@Override
	public List<Point> findPoint() {
		return (List<Point>)this.getHibernateTemplate().find("from entity.Point");
	}
	
}