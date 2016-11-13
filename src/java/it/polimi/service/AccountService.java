package it.polimi.service;

import it.polimi.model.Account;

/**
 * Created by Jacopo Magni on 24/10/2016.
 */
public interface AccountService {

    public boolean validatePassword(Account account);
    public int retrieveAccountId(Account account);

}
