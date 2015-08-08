package com.mandy.astronomy.service.impl;

import com.mandy.astronomy.entity.Satellites;
import com.mandy.astronomy.repository.SatellitesRepository;
import com.mandy.astronomy.service.SatellitesService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class SatellitesSrviceImpl implements SatellitesService {

    @Autowired
    private SatellitesRepository satellitesRepository;

    @Override
    public Satellites addSatellite(Satellites satellite){
        return satellitesRepository.save(satellite);
    }

    @Override
    public void delete(long id){ satellitesRepository.delete(id); }

    @Override
    public Satellites getByName(String name){ return satellitesRepository.findByName(name); }

    @Override
    public List<Satellites> getAll(){ return satellitesRepository.findAll(); }

    @Override
    public List<Satellites> getByPlanetName(String name){ return satellitesRepository.findByPlanet(name); }
}
