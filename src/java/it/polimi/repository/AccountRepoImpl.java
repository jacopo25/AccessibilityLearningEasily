package it.polimi.repository;

import it.polimi.model.Account;
import org.springframework.stereotype.Repository;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.TypedQuery;
import java.util.List;

/**
 * Created by Jacopo Magni on 24/10/2016.
 */
@Repository
public class AccountRepoImpl implements AccountRepo{

    /**
     *  {@link javax.persistence.EntityManager} object to access the DB
     */
    @PersistenceContext(unitName = "AccountUnit")
    protected EntityManager em;

    @Override
    public String retrievePassword(String nickname){

        TypedQuery<Account> query = em.createQuery("SELECT a FROM Account a " +
                "WHERE a.nickname = :nickname", Account.class);
        query.setParameter("nickname", nickname);

        List<Account> rl = query.getResultList();

        return rl.get(0).getPassword();

    }

    @Override
    public int retrieveAccountId(String nickname){

        TypedQuery<Account> query = em.createQuery("SELECT a FROM Account a " +
                "WHERE a.nickname = :nickname", Account.class);
        query.setParameter("nickname", nickname);

        List<Account> rl = query.getResultList();

        return rl.get(0).getOid();

    }

}
