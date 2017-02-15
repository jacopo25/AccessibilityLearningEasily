package it.polimi.service;

import it.polimi.model.Answers;
import it.polimi.repository.AnswerRepo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

/**
 * Created by rezzo on 13/02/2017.
 */
@Service
public class AnswerServiceImpl implements AnswerService {


    @Autowired
    private AnswerRepo repo;

    @Override
    public List<Answers> retrieveAllAnswers(int lectureID){


        List<Answers> resultList = new ArrayList<>();

        resultList = repo.retrieveAnswer(lectureID);


        return resultList;
    }

    @Override
    public void retrieveQuestions(int lectureID){

        return ;
    }

    @Override
    public List<String> retrieveCorrectAnswers(List<Answers> answers){
        List<String> correctAnswers = new ArrayList<>();
        for(int i=0;i<answers.size();i++){
            correctAnswers.add(answers.get(i).getAnsw_correct());
        }
        return correctAnswers;
    }

    @Override
    public int retrieveLectureIDByAnsw(String answ){
        int lectureID;
        List<Answers> answers;
        answers = repo.retrieveLectureIDByAnsw(answ);
        lectureID = answers.get(0).getLecture_id();
        return lectureID;
    }

}
