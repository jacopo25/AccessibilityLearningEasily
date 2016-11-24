package it.polimi.model;

import javax.persistence.*;
import java.io.Serializable;



/**
 * Created by Jacopo Magni on 24/10/2016.
 */
@Entity
public class Account implements Serializable {

    public Account() {
    }

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private int account_id;

    private String name;

    private String surname;
    private String nickname;
    private String password;
    private String email;
    private String age;

// ---------- GETTERS AND SETTERS ----------//

    public int getOid() {
        return account_id;
    }

    public void setOid(int oid) {
        this.account_id = oid;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getSurname() {
        return surname;
    }

    public void setSurname(String surname) {
        this.surname = surname;
    }

    public String getNickname() {
        return nickname;
    }

    public void setNickname(String nickname) {
        this.nickname = nickname;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getMail() {
        return email;
    }

    public void setMail(String mail) {
        this.email = mail;
    }

    public String getAge() {
        return age;
    }

    public void setAge(String age) {
        this.age = age;
    }

}
