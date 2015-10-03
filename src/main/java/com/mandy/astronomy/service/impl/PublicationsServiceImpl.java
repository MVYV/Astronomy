package com.mandy.astronomy.service.impl;

import com.mandy.astronomy.entity.Publications;
import com.mandy.astronomy.repository.PublicationsRepository;
import com.mandy.astronomy.service.PublicationsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class PublicationsServiceImpl implements PublicationsService{

    @Autowired
    private PublicationsRepository publicationsRepository;

    @Override
    public Publications addPublication(Publications publication){ return publicationsRepository.save(publication); }

    @Override
    public void delete(long id){ publicationsRepository.delete(id); }

    @Override
    public List<Publications> getAll(){ return publicationsRepository.findAll(); }
}
