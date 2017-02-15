package it.polimi.model;

import java.util.ArrayList;
import java.util.List;

/**
 * Created by rezzo on 09/02/2017.
 */
public class SupportClassAnswers {

    public SupportClassAnswers(){
    }


    private List<Answers> answers;
    private List<String> correctAnswers;
    private ArrayList<String> userAnswers;


    private String[] tips = new String[5];

    // ---------- GETTERS AND SETTERS ----------//


    public List<Answers> getAnswers() {
        return answers;
    }

    public void setAnswers(List<Answers> answers) {
        this.answers = answers;
    }

    public ArrayList<String> getUserAnswers() {
        return userAnswers;
    }

    public void setUserAnswers(ArrayList<String> userAnswers) { this.userAnswers = userAnswers; }

    public List<String> getCorrectAnswers() {
        return correctAnswers;
    }

    public void setCorrectAnswers(List<String> correctAnswers) {
        this.correctAnswers = correctAnswers;
    }

    public String[] getTips() {
        return tips;
    }

    public void setTips(int pos,String tip) {
        this.tips[pos] = tip;
    }
}
