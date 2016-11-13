package it.polimi.repository;

/**
 * Created by Jacopo Magni on 24/10/2016.
 */
public interface AccountRepo {

    public String retrievePassword(String nickname);
    public int retrieveAccountId(String nickname);

}
