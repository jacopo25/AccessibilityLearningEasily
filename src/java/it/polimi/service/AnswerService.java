package it.polimi.service;

import it.polimi.model.Answers;

import java.util.ArrayList;
import java.util.List;

/**
 * Created by rezzo on 13/02/2017.
 */
public interface AnswerService {

    public List<Answers> retrieveAllAnswers(int lectureID);
    public void retrieveQuestions(int lectureID);
    public List<String> retrieveCorrectAnswers(List<Answers> answers);
    public int retrieveLectureIDByAnsw(String answ);
}
