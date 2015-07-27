package com.mandy.astronomy.service.impl;

import com.mandy.astronomy.entity.Universe;
import com.mandy.astronomy.repository.UniverseRepository;
import com.mandy.astronomy.service.UniverseService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class UniverseServiceImpl implements UniverseService{

    @Autowired
    private UniverseRepository universeRepository;

    @Override
    public Universe getUniverse(byte id){ return universeRepository.findOne(id); }
}
