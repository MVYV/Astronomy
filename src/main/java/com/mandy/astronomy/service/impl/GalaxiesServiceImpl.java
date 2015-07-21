package com.mandy.astronomy.service.impl;

import com.mandy.astronomy.entity.Galaxies;
import com.mandy.astronomy.repository.GalaxiesRepository;
import com.mandy.astronomy.service.GalaxiesService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class GalaxiesServiceImpl implements GalaxiesService{

    @Autowired
    private GalaxiesRepository galaxiesRepository;

    @Override
    public Galaxies addGalaxy(Galaxies galaxy){ return galaxiesRepository.save(galaxy); }

    @Override
    public void delete(long id){ galaxiesRepository.delete(id); }

    @Override
    public Galaxies getByName(String name){ return galaxiesRepository.findByName(name); }

    @Override
    public List<Galaxies> getAll(){ return galaxiesRepository.findAll(); }
}
