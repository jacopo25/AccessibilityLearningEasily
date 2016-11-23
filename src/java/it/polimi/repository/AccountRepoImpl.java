package it.polimi.repository;

import it.polimi.model.*;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.TypedQuery;
import java.util.List;

/**
 * Created by Jacopo Magni on 24/10/2016.
 */
@Repository
@Transactional("transactionManager")
public class AccountRepoImpl implements AccountRepo{

    /**
     *  {@link javax.persistence.EntityManager} object to access the DB
     */
    @PersistenceContext(unitName = "AccountUnit")
    protected EntityManager em;

    @Override
    public Account retrieveAccountFromNickname(String nickname){

        TypedQuery<Account> query = em.createQuery("SELECT a FROM Account a " +
                "WHERE a.nickname = :nickname", Account.class);
        query.setParameter("nickname", nickname);

        List<Account> rl = query.getResultList();

        Account account = rl.get(0);

        return account;

    }

    @Override
    public Account retrieveAccountFromID(int account_id){

        TypedQuery<Account> query = em.createQuery("SELECT a FROM Account a " +
                "WHERE a.account_id = :account_id", Account.class);
        query.setParameter("account_id", account_id);

        List<Account> rl = query.getResultList();

        Account account = rl.get(0);

        return account;

    }

    @Override
    public List<Badges> retrieveAccountBadges(Account account){

        int account_id = account.getOid();

        TypedQuery<Badges> query = em.createQuery("SELECT b FROM Badges b, Account a, AccountBadges ab " +
                "WHERE a.account_id = :account_id AND b.badge_id = ab.badge_id AND a.account_id = ab.account_id",
                Badges.class);
        query.setParameter("account_id", account_id);

        List<Badges> rl = query.getResultList();

        return rl;

    }

    @Override
    public List<Lecture> retrieveAccountLecture(Account account){

        int account_id = account.getOid();

        TypedQuery<Lecture> query = em.createQuery("SELECT l FROM Lecture l, Account a, AccountLecture al " +
                        "WHERE a.account_id = :account_id AND l.lecture_id = al.lecture_id AND a.account_id = al.account_id",
                Lecture.class);
        query.setParameter("account_id", account_id);

        List<Lecture> rl = query.getResultList();

        return rl;

    }

    @Override
    @Transactional
    public void createAccount(Account account){

        em.persist(account);

    }

    @Override
    public void insertAccountLecture(int lecture_id, int account_id){

        AccountLecture accountLecture = new AccountLecture();
        accountLecture.setAccount_id(account_id);
        accountLecture.setLetcure_id(lecture_id);

        em.getTransaction().begin();
        em.persist(accountLecture);
        em.getTransaction().commit();
        em.close();

    }

    @Override
    public void insertAccountBadge(int badge_id, int account_id){

        AccountBadges accountBadges = new AccountBadges();
        accountBadges.setBadge_id(badge_id);
        accountBadges.setBadge_id(badge_id);

        em.getTransaction().begin();
        em.persist(badge_id);
        em.getTransaction().commit();
        em.close();

    }

}
