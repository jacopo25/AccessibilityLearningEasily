package it.polimi.repository;

import it.polimi.model.Lecture;

import java.util.List;

/**
 * Created by Jacopo Magni on 16/11/2016.
 */
public interface LectureRepo {

    public List<Lecture> retrieveLecture(int lectureID);
    public Lecture retrieveLectureInfo(String lectureName);


}
