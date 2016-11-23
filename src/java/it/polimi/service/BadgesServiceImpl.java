package it.polimi.service;

import it.polimi.model.Badges;
import it.polimi.repository.BadgesRepo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * Created by Jacopo Magni on 23/11/2016.
 */
@Service
public class BadgesServiceImpl implements BadgesService {

    @Autowired
    private BadgesRepo repo;

    @Override
    public Badges retrieveBadge(int badge_id){

        Badges badge = repo.retrieveBadge(badge_id);

        return badge;
    }

}
