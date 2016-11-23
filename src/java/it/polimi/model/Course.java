package it.polimi.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

/**
 * Created by Jacopo Magni on 24/10/2016.
 */
@Entity
public class Course {

    public Course() {
    }

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private int course_ID;

    private String course_name;

// ---------- GETTERS AND SETTERS ----------//

    public int getCourse_ID() {
        return course_ID;
    }

    public void setCourse_ID(int course_ID) {
        this.course_ID = course_ID;
    }

    public String getCourse_name() {
        return course_name;
    }

    public void setCourse_name(String course_name) {
        this.course_name = course_name;
    }

}
