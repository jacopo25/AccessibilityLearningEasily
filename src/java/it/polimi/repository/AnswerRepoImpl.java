package it.polimi.repository;

import it.polimi.model.Answers;
import org.springframework.stereotype.Repository;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.TypedQuery;
import java.util.ArrayList;
import java.util.List;

/**
 * Created by rezzo on 13/02/2017.
 */
@Repository
public class AnswerRepoImpl implements AnswerRepo {
    /**
     *  {@link javax.persistence.EntityManager} object to access the DB
     */
    @PersistenceContext(unitName = "AccountUnit")
    protected EntityManager em;

    @Override
    public List<Answers> retrieveAnswer(int lectureID){

        TypedQuery<Answers> query = em.createQuery("SELECT answers FROM Answers answers " +
                "WHERE answers.lecture_id = :lectureID", Answers.class);
        query.setParameter("lectureID", lectureID);

        List<Answers> rl = query.getResultList();

        return rl;
    }
}
