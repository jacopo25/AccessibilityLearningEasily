package it.polimi.service;

import it.polimi.model.Account;
import it.polimi.model.Badges;

import java.util.List;

/**
 * Created by Jacopo Magni on 24/10/2016.
 */
public interface AccountService {

    public boolean validatePassword(Account account);
    public int retrieveAccountId(Account account);
    public Account retrieveAccountFromNickname(String nickname);
    public Account retrieveAccountFromID(int account_id);
    public List<Badges> retrieveAccountBadges(Account account);
    public void createAccount(Account account);
    public void insertAccountLecture(int lecture_id, int account_id);
    public void insertAccountBadge(int badge_id, int account_id);


}
