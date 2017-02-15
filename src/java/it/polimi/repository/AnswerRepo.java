package it.polimi.repository;

import it.polimi.model.Answers;
import it.polimi.service.AnswerService;

import java.util.ArrayList;
import java.util.List;

/**
 * Created by rezzo on 13/02/2017.
 */
public interface AnswerRepo {
    public List<Answers> retrieveAnswer(int lectureID);
    public List<Answers> retrieveLectureIDByAnsw(String answ);
}
