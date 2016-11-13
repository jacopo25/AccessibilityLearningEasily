package it.polimi.service;

import it.polimi.model.Account;
import it.polimi.repository.AccountRepo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

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
        String passwordInserted = account.getPassword();

        String passwordDatabase = repo.retrievePassword(account.getNickname());
        System.out.println("PSW DB:"+passwordDatabase);
        System.out.println("PSW inserted"+passwordInserted);
        if(passwordInserted.equals(passwordDatabase)){
            result = true;
        }

        return result;
    }

    @Override
    public int retrieveAccountId(Account account){

        int id = repo.retrieveAccountId(account.getNickname());

        return id;

    }

}
