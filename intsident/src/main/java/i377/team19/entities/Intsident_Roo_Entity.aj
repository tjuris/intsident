// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package i377.team19.entities;

import i377.team19.entities.Intsident;
import java.lang.Integer;
import java.lang.Long;
import java.util.List;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.EntityManager;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.PersistenceContext;
import javax.persistence.Version;
import org.springframework.transaction.annotation.Transactional;

privileged aspect Intsident_Roo_Entity {
    
    declare @type: Intsident: @Entity;
    
    @PersistenceContext
    transient EntityManager Intsident.entityManager;
    
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "id")
    private Long Intsident.id;
    
    @Version
    @Column(name = "version")
    private Integer Intsident.version;
    
    public Long Intsident.getId() {
        return this.id;
    }
    
    public void Intsident.setId(Long id) {
        this.id = id;
    }
    
    public Integer Intsident.getVersion() {
        return this.version;
    }
    
    public void Intsident.setVersion(Integer version) {
        this.version = version;
    }
    
    @Transactional
    public void Intsident.persist() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.persist(this);
    }
    
    @Transactional
    public void Intsident.remove() {
        if (this.entityManager == null) this.entityManager = entityManager();
        if (this.entityManager.contains(this)) {
            this.entityManager.remove(this);
        } else {
            Intsident attached = Intsident.findIntsident(this.id);
            this.entityManager.remove(attached);
        }
    }
    
    @Transactional
    public void Intsident.flush() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.flush();
    }
    
    @Transactional
    public void Intsident.clear() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.clear();
    }
    
    @Transactional
    public Intsident Intsident.merge() {
        if (this.entityManager == null) this.entityManager = entityManager();
        Intsident merged = this.entityManager.merge(this);
        this.entityManager.flush();
        return merged;
    }
    
    public static final EntityManager Intsident.entityManager() {
        EntityManager em = new Intsident().entityManager;
        if (em == null) throw new IllegalStateException("Entity manager has not been injected (is the Spring Aspects JAR configured as an AJC/AJDT aspects library?)");
        return em;
    }
    
    public static long Intsident.countIntsidents() {
        return entityManager().createQuery("SELECT COUNT(o) FROM Intsident o", Long.class).getSingleResult();
    }
    
    public static List<Intsident> Intsident.findAllIntsidents() {
        return entityManager().createQuery("SELECT o FROM Intsident o", Intsident.class).getResultList();
    }
    
    public static Intsident Intsident.findIntsident(Long id) {
        if (id == null) return null;
        return entityManager().find(Intsident.class, id);
    }
    
    public static List<Intsident> Intsident.findIntsidentEntries(int firstResult, int maxResults) {
        return entityManager().createQuery("SELECT o FROM Intsident o", Intsident.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
}
