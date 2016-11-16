package it.polimi.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

/**
 * Created by Jacopo Magni on 24/10/2016.
 */
@Entity
public class AccountLecture {

    public AccountLecture() {
    }

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private int oid;

    private String name;
    private String surname;
}
