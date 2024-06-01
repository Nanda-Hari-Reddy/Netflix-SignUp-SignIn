package com.jsp.netflix.dao;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.EntityTransaction;
import javax.persistence.NoResultException;
import javax.persistence.Query;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.jsp.netflix.dto.User;

@Repository
public class UserDao 
{
	@Autowired
	EntityManagerFactory emf;
	
	public void saveUser(User user)
	{
		EntityManager entityManager = emf.createEntityManager();
		EntityTransaction entityTransaction = entityManager.getTransaction();

		entityTransaction.begin();
		entityManager.persist(user);
		entityTransaction.commit();
	}
	
	public User validateUser(String email,String password)
	{
		EntityManager em = emf.createEntityManager();
		Query query = em.createQuery("select u from User u where u.email=?1 and u.password=?2" );
		query.setParameter(1, email) ;
		query.setParameter(2, password) ;
		
		User user;
		
		try {
			 user= (User)query.getSingleResult();
			 return user;
		}
		catch(NoResultException e) {
			return null ;
		}
	}
}
