package it.polimi.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

/**
 * Created by Jacopo Magni on 24/10/2016.
 */
@Entity
public class Lecture {

    public Lecture() {
    }

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private int lecture_ID;

    private int course_ID;
    private String lecture_name;
    private int answer_1;
    private int answer_2;
    private int answer_3;
    private int answer_4;
    private int answer_5;

    public int getLecture_ID() {
        return lecture_ID;
    }

    public void setLecture_ID(int lecture_ID) {
        this.lecture_ID = lecture_ID;
    }

    public int getCourse_ID() {
        return course_ID;
    }

    public void setCourse_ID(int course_ID) {
        this.course_ID = course_ID;
    }

    public String getLecture_name() {
        return lecture_name;
    }

    public void setLecture_name(String lecture_name) {
        this.lecture_name = lecture_name;
    }

    public int getAnswer_1() {
        return answer_1;
    }

    public void setAnswer_1(int answer_1) {
        this.answer_1 = answer_1;
    }

    public int getAnswer_2() {
        return answer_2;
    }

    public void setAnswer_2(int answer_2) {
        this.answer_2 = answer_2;
    }

    public int getAnswer_3() {
        return answer_3;
    }

    public void setAnswer_3(int answer_3) {
        this.answer_3 = answer_3;
    }

    public int getAnswer_4() {
        return answer_4;
    }

    public void setAnswer_4(int answer_4) {
        this.answer_4 = answer_4;
    }

    public int getAnswer_5() {
        return answer_5;
    }

    public void setAnswer_5(int answer_5) {
        this.answer_5 = answer_5;
    }

}
