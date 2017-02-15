package it.polimi.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

/**
 * Created by rezzo on 12/02/2017.
 */
@Entity
public class Answers {

    public Answers(){}

    @Id
        @GeneratedValue(strategy = GenerationType.AUTO)
        private int id;

        private int lecture_id;
        private String answ1;
        private String answ2;
        private String answ3;
        private String answ4;
        private String answ_correct;
        private String question;

    // ---------- GETTERS AND SETTERS ----------//

    public int getId() { return id; }

    public void setId(int id) { this.id = id; }

    public int getLecture_id() {
        return lecture_id;
    }

    public void setLecture_id(int lecture_id) {
        this.lecture_id = lecture_id;
    }

    public String getAnsw1() {
        return answ1;
    }

    public void setAnsw1(String answ1) {
        this.answ1 = answ1;
    }

    public String getAnsw2() {
        return answ2;
    }

    public void setAnsw2(String answ2) {
        this.answ2 = answ2;
    }

    public String getAnsw3() {
        return answ3;
    }

    public void setAnsw3(String answ3) {
        this.answ3 = answ3;
    }

    public String getAnsw4() {
        return answ4;
    }

    public void setAnsw4(String answ4) {
        this.answ4 = answ4;
    }

    public String getAnsw_correct() {
        return answ_correct;
    }

    public void setAnsw_correct(String answ_correct) {
        this.answ_correct = answ_correct;
    }

    public String getQuestion() {
        return question;
    }

    public void setQuestion(String question) {
        this.question = question;
    }



}
