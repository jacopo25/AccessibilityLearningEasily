package it.polimi.model;

import javax.persistence.*;

/**
 * Created by Jacopo Magni on 23/11/2016.
 */
@Entity
@IdClass(AccountBadgesID.class)
public class AccountBadges {

    public AccountBadges() {
    }

    @Id
    private int badge_id;
    @Id
    private int account_id;

// ---------- GETTERS AND SETTERS ----------//


    public int getBadge_id() {
        return badge_id;
    }

    public void setBadge_id(int badge_id) {
        this.badge_id = badge_id;
    }

    public int getAccount_id() {
        return account_id;
    }

    public void setAccount_id(int account_id) {
        this.account_id = account_id;
    }

}
