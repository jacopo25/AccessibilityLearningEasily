package it.polimi.repository;

import it.polimi.model.Badges;
import org.springframework.stereotype.Repository;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.TypedQuery;
import java.util.List;

/**
 * Created by Jacopo Magni on 23/11/2016.
 */
@Repository
public class BadgesRepoImpl implements BadgesRepo {

    /**
     *  {@link javax.persistence.EntityManager} object to access the DB
     */
    @PersistenceContext(unitName = "AccountUnit")
    protected EntityManager em;

    @Override
    public Badges retrieveBadge(int badge_id){

        TypedQuery<Badges> query = em.createQuery("SELECT b FROM Badges b " +
                "WHERE b.badge_id = :badge_id", Badges.class);
        query.setParameter("badge_id", badge_id);

         List<Badges> rl = query.getResultList();

        Badges badge = rl.get(0);

        return badge;

    }

}
