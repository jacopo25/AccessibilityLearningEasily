package it.polimi.repository;

import it.polimi.model.Lecture;
import org.springframework.stereotype.Repository;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.TypedQuery;
import java.util.List;

/**
 * Created by Jacopo Magni on 16/11/2016.
 */
@Repository
public class LectureRepoImpl implements LectureRepo {

    /**
     *  {@link javax.persistence.EntityManager} object to access the DB
     */
    @PersistenceContext(unitName = "AccountUnit")
    protected EntityManager em;

    @Override
    public List<Lecture> retrieveLecture(int lectureID){

        TypedQuery<Lecture> query = em.createQuery("SELECT lecture FROM Lecture lecture " +
                "WHERE lecture.lecture_ID = :lectureID", Lecture.class);
        query.setParameter("lectureID", lectureID);

        List<Lecture> rl = query.getResultList();

        return rl;
    }

}
