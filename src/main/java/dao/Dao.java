package dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.EntityTransaction;
import javax.persistence.Persistence;

import dto.Adto;

public class Dao {

EntityManagerFactory entityManagerFactory=Persistence.createEntityManagerFactory("dev");
EntityManager entityManager=entityManagerFactory.createEntityManager();
EntityTransaction entityTransaction=entityManager.getTransaction();

public void create(Adto d1)
{
	entityTransaction.begin();
	entityManager.persist(d1);
	entityTransaction.commit();
}
public List<Adto> fetchAll()
	{
	return entityManager.createQuery("select x from Adto x").getResultList();
	}	
}



