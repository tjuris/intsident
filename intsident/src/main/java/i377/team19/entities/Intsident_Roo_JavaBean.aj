// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package i377.team19.entities;

import i377.team19.entities.Loik;
import i377.team19.entities.Seadus;
import java.lang.String;
import java.util.Date;

privileged aspect Intsident_Roo_JavaBean {
    
    public String Intsident.getName() {
        return this.name;
    }
    
    public void Intsident.setName(String name) {
        this.name = name;
    }
    
    public Date Intsident.getKuupaev() {
        return this.kuupaev;
    }
    
    public void Intsident.setKuupaev(Date kuupaev) {
        this.kuupaev = kuupaev;
    }
    
    public Loik Intsident.getLoik() {
        return this.loik;
    }
    
    public void Intsident.setLoik(Loik loik) {
        this.loik = loik;
    }
    
    public Seadus Intsident.getSeadus() {
        return this.seadus;
    }
    
    public void Intsident.setSeadus(Seadus seadus) {
        this.seadus = seadus;
    }
    
}