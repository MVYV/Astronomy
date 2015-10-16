package com.mandy.astronomy.service.impl;

import com.mandy.astronomy.entity.SolarSystem;
import com.mandy.astronomy.repository.SolarSystemRepository;
import com.mandy.astronomy.service.SolarSystemService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class SolarSystemServiceImpl implements SolarSystemService {

    @Autowired
    private SolarSystemRepository solarSystemRepository;

    @Override
    public SolarSystem getSolarSystem(byte id){ return solarSystemRepository.findOne(id); }
}
