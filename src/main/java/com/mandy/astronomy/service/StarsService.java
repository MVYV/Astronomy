package com.mandy.astronomy.service;

import com.mandy.astronomy.entity.Stars;

import java.util.List;

public interface StarsService {

    Stars addStar(Stars star);
    void delete(long id);
    Stars getByName(String name);
    List<Stars> getAll();
}
