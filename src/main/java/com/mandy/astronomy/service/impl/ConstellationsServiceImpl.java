package com.mandy.astronomy.service.impl;

import com.mandy.astronomy.entity.Constellations;
import com.mandy.astronomy.repository.ConstellationsRepository;
import com.mandy.astronomy.service.ConstellationsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ConstellationsServiceImpl implements ConstellationsService{

    @Autowired
    private ConstellationsRepository constellationsRepository;

    @Override
    public Constellations addConstellations(Constellations constellation){
        return constellationsRepository.save(constellation);
    }

    @Override
    public void delete(long id){
        constellationsRepository.delete(id);
    }

    @Override
    public Constellations getByName(String name){
        return constellationsRepository.findByName(name);
    }

    @Override
    public List<Constellations> getAll(){
        return constellationsRepository.findAll();
    }
}
