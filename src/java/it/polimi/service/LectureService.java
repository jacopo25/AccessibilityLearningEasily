package it.polimi.service;

import java.util.ArrayList;

/**
 * Created by Jacopo Magni on 16/11/2016.
 */
public interface LectureService {

    public ArrayList<Integer> computeLectureAnswers(int lectureID);
    public String retrieveLectureName(int lectureID);

}
