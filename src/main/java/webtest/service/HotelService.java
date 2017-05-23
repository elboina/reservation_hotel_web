/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package webtest.service;

import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.Persistence;
import webtest.entity.Hotel;

/**
 *
 * @author formation
 */
public class HotelService {
    public List<Hotel> lister () {
        EntityManager em = Persistence.createEntityManagerFactory("PU").createEntityManager();
        
        return em.createQuery("SELECT h FROM Hotel h ORDER BY h.nom").getResultList();
    }
        
    public void ajouter(Hotel h) {
        EntityManager em = Persistence.createEntityManagerFactory("PU").createEntityManager();
        em.getTransaction().begin();
        em.persist(h);
        em.getTransaction().commit();
    }
        
    public Hotel rechercher(Long id) {
        EntityManager em = Persistence.createEntityManagerFactory("PU").createEntityManager();
        return em.find(Hotel.class, id);
    }  
    
   
    
    public void modifier(Hotel h) {
        EntityManager em = Persistence.createEntityManagerFactory("PU").createEntityManager();
        em.getTransaction().begin();
        em.merge(h);
        em.getTransaction().commit();
    }
    
    public void supprimer(long id) {
        EntityManager em = Persistence.createEntityManagerFactory("PU").createEntityManager();
        em.getTransaction().begin();
        em.remove(em.find(Hotel.class, id));
        em.getTransaction().commit();
    }
          
}
