package it.polimi.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

/**
 * Created by Jacopo Magni on 23/11/2016.
 */
@Entity
public class Badges {

    public Badges() {
    }

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private int badge_id;

    private String badge_name;

// ---------- GETTERS AND SETTERS ----------//
    public int getBadge_id() {
        return badge_id;
    }

    public void setBadge_id(int badge_id) {
        this.badge_id = badge_id;
    }

    public String getBadge_name() {
        return badge_name;
    }

    public void setBadge_name(String badge_name) {
        this.badge_name = badge_name;
    }





}
