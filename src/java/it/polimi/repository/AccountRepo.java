package it.polimi.repository;

import it.polimi.model.Account;
import it.polimi.model.Badges;

import java.util.List;

/**
 * Created by Jacopo Magni on 24/10/2016.
 */
public interface AccountRepo {

    public Account retrieveAccountFromNickname(String nickname);
    public Account retrieveAccountFromID(int account_id);
    public List<Badges> retrieveAccountBadges(Account account);
    public void insertAccountLecture(int lecture_id, int account_id);
    public void insertAccountBadge(int badge_id, int account_id);
    public void createAccount(Account account);

}
