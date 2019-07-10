package edu.fa.dao;

import java.util.List;

import javax.persistence.criteria.CriteriaBuilder;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.Root;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import edu.fa.entity.Content;

@Repository
public class ContentDAOImpl implements ContentDAO{

	@Autowired
	private SessionFactory sessionFactory;

	public List<Content> getAllContents() {
		
		Session session = sessionFactory.getCurrentSession();
		CriteriaBuilder cb = session.getCriteriaBuilder();
		CriteriaQuery<Content> cq = cb.createQuery(Content.class);
		Root<Content> root = cq.from(Content.class);
		cq.select(root);

		Query<Content> query = session.createQuery(cq);
		return query.getResultList();	
	}

}
