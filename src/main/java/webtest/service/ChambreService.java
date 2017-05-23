/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package webtest.service;

import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.Persistence;
import webtest.entity.Chambre;

/**
 *
 * @author formation
 */
public class ChambreService {
    public void ajouter(Chambre ch) {
        EntityManager em = Persistence.createEntityManagerFactory("PU").createEntityManager();
        em.getTransaction().begin();
        em.persist(ch);
        em.getTransaction().commit();
    }
    
    public List<Chambre> lister() {
        EntityManager em = Persistence.createEntityManagerFactory("PU").createEntityManager();
        return em.createQuery("SELECT ch FROM Chambre ch ORDER BY ch.nom").getResultList();
    }
    
    public Chambre rechercher(long id) {
        EntityManager em = Persistence.createEntityManagerFactory("PU").createEntityManager();
        return em.find(Chambre.class, id);
    }
    
    public void supprimer(long id) {
        EntityManager em = Persistence.createEntityManagerFactory("PU").createEntityManager();
        em.getTransaction().begin();
        em.remove(em.find(Chambre.class, id));
        em.getTransaction().commit();
    }
}
