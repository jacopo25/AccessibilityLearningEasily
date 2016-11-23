package it.polimi.model;

import javax.persistence.*;

/**
 * Created by Jacopo Magni on 24/10/2016.
 */
@Entity
@IdClass(AccountLectureID.class)
public class AccountLecture {

    public AccountLecture() {
    }

    @Id
    private int account_id;
    @Id
    private int lecture_id;

// ---------- GETTERS AND SETTERS ----------//

    public int getAccount_id() {
        return account_id;
    }

    public void setAccount_id(int account_id) {
        this.account_id = account_id;
    }

    public int getLetcure_id() {
        return lecture_id;
    }

    public void setLetcure_id(int letcure_id) {
        this.lecture_id = letcure_id;
    }



}
