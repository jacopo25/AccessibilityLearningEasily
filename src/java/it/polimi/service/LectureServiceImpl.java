package it.polimi.service;

import it.polimi.model.Lecture;
import it.polimi.repository.LectureRepo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

/**
 * Created by Jacopo Magni on 16/11/2016.
 */
@Service
public class LectureServiceImpl implements LectureService {

    @Autowired
    private LectureRepo repo;

    @Override
    public ArrayList<Integer> computeLectureAnswers(int lectureID){

        int answer_1;
        int answer_2;
        int answer_3;
        int answer_4;
        int answer_5;
        List<Lecture> resultList = new ArrayList<>();
        ArrayList<Integer> answerlList = new ArrayList<>();

        resultList = repo.retrieveLecture(lectureID);

        answer_1 = resultList.get(0).getAnswer_1();
        answer_2 = resultList.get(0).getAnswer_2();
        answer_3 = resultList.get(0).getAnswer_3();
        answer_4 = resultList.get(0).getAnswer_4();
        answer_5 = resultList.get(0).getAnswer_5();

        answerlList.add(answer_1);
        answerlList.add(answer_2);
        answerlList.add(answer_3);
        answerlList.add(answer_4);
        answerlList.add(answer_5);

        return answerlList;
    }

    @Override
    public String retrieveLectureName(int lectureID){

        String lectureName = null;
        List<Lecture> resultList = new ArrayList<>();

        resultList = repo.retrieveLecture(lectureID);
        lectureName = resultList.get(0).getLecture_name();

        return lectureName;
    }

    @Override
    public Lecture retrieveLectureInfo(String lectureName){

        Lecture requiredLecture = new Lecture();
        requiredLecture = repo.retrieveLectureInfo(lectureName);

        return requiredLecture;
    }

}
