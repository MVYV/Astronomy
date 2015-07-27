package com.mandy.astronomy.service.impl;

import com.mandy.astronomy.entity.SolarSystem;
import com.mandy.astronomy.repository.SolarSytemRepository;
import com.mandy.astronomy.service.SolarSytemService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class SolarSystemServiceImpl implements SolarSytemService{

    @Autowired
    private SolarSytemRepository solarSytemRepository;

    @Override
    public SolarSystem getSolarSystem(byte id){ return solarSytemRepository.findOne(id); }
}
