package it.polimi.service;

import it.polimi.model.Account;
import it.polimi.model.Badges;
import it.polimi.model.Lecture;
import it.polimi.repository.AccountRepo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

/**
 * Created by Jacopo Magni on 27/10/2016.
 */
@Service
public class AccountServiceImpl implements AccountService {


    @Autowired
    private AccountRepo repo;

    @Override
    public boolean validatePassword(Account account){

        boolean result = false;
        String passwordDatabase;
        String passwordInserted = account.getPassword();

        Account accountFromNickname = repo.retrieveAccountFromNickname(account.getNickname());
        if(accountFromNickname != null) {
            passwordDatabase = accountFromNickname.getPassword();
            if (passwordInserted.equals(passwordDatabase)) {
                result = true;
            }
        }

        return result;
    }

    @Override
    public int retrieveAccountId(Account account){

        Account accountFromNickname = repo.retrieveAccountFromNickname(account.getNickname());

        int account_id = accountFromNickname.getOid();

        return account_id;

    }

    @Override
    public Account retrieveAccountFromID(int account_id){

        Account account =  repo.retrieveAccountFromID(account_id);

        return account;

    }

    @Override
    public Account retrieveAccountFromNickname(String nickname){

        Account account = repo.retrieveAccountFromNickname(nickname);

        return account;
    }

    @Override
    public List<Badges> retrieveAccountBadges(Account account){

        List<Badges> badgesList = repo.retrieveAccountBadges(account);

        return badgesList;
    }

    @Override
    public List<Lecture> retrieveAccountLecture(Account account){

        List<Lecture> accountLecture = repo.retrieveAccountLecture(account);
        return accountLecture;
    }

    @Override
    @Transactional
    public void createAccount(Account account){
        repo.createAccount(account);
    }

    @Override
    public void insertAccountLecture(int lecture_id, int account_id){
        repo.insertAccountLecture(lecture_id, account_id);
    }

    @Override
    public void insertAccountBadge(int badge_id, int account_id){
        repo.insertAccountBadge(badge_id, account_id);
    }

}
