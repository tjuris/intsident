package i377.team19.entities;

import org.springframework.roo.addon.entity.RooEntity;
import org.springframework.roo.addon.javabean.RooJavaBean;
import org.springframework.roo.addon.tostring.RooToString;

import javax.validation.constraints.NotNull;

import java.util.Date;

import javax.persistence.PrePersist;
import javax.persistence.PreRemove;
import javax.persistence.PreUpdate;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.format.annotation.DateTimeFormat;
import i377.team19.entities.Loik;
import javax.persistence.Enumerated;
import i377.team19.entities.Seadus;

@RooJavaBean
@RooToString
@RooEntity
public class Intsident {

    @NotNull
    private String name;

    @Temporal(TemporalType.TIMESTAMP)
    @DateTimeFormat(style = "M-")
    private Date kuupaev;

    @Enumerated
    private Loik loik;

    @Enumerated
    private Seadus seadus;

    @NotNull
    private String muutja;

    @NotNull
    private String avaja;

    private String sulgeja;
    
    @NotNull
    @Temporal(TemporalType.TIMESTAMP)
    @DateTimeFormat(style = "M-")
    private Date avatud;

    @NotNull
    @Temporal(TemporalType.TIMESTAMP)
    @DateTimeFormat(style = "M-")
    private Date muudetud;

    @Temporal(TemporalType.TIMESTAMP)
    @DateTimeFormat(style = "M-")
    private Date suletud;
    
    @PrePersist
    public void recordCreated() {
        setAvatud( new Date() );
    }

    @PreUpdate
    public void recordModified() {
        setMuudetud( new Date() );
    }

    @PreRemove
    public void preventRemove() {
        throw new SecurityException("Removing of incidents is prohibited!");
    }
    
}
