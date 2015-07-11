package com.mandy.astronomy.service.impl;

import com.mandy.astronomy.entity.Planets;
import com.mandy.astronomy.repository.PlanetsRepository;
import com.mandy.astronomy.service.PlanetsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class PlanetsServiceImpl implements PlanetsService {

    @Autowired
    private PlanetsRepository planetsRepository;

    @Override
    public Planets addPlanet(Planets planet){
        return planetsRepository.save(planet);
    }

    @Override
    public void delete(long id){
        planetsRepository.delete(id);
    }

    @Override
    public Planets getByName(String name){
        return planetsRepository.findByName(name);
    }

    @Override
    public List<Planets> getAll(){
        return planetsRepository.findAll();
    }
}
