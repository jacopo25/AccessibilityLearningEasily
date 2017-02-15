package it.polimi.repository;

import it.polimi.model.Answers;

import java.util.ArrayList;
import java.util.List;

/**
 * Created by rezzo on 13/02/2017.
 */
public interface AnswerRepo {
    public List<Answers> retrieveAnswer(int lectureID);
}
