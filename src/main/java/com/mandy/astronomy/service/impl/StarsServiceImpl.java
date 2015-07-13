package com.mandy.astronomy.service.impl;

import com.mandy.astronomy.entity.Stars;
import com.mandy.astronomy.repository.StarsRepository;
import com.mandy.astronomy.service.StarsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class StarsServiceImpl implements StarsService {

    @Autowired
    private StarsRepository starsRepository;

    @Override
    public Stars addStar(Stars star){
        return starsRepository.save(star);
    }

    @Override
    public void delete(long id){
        starsRepository.delete(id);
    }

    @Override
    public Stars getByName(String name){
        return starsRepository.findByName(name);
    }

    @Override
    public List<Stars> getAll(){
        return starsRepository.findAll();
    }
}
