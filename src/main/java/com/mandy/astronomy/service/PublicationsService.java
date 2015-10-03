package com.mandy.astronomy.service;

import com.mandy.astronomy.entity.Publications;

import java.util.List;

public interface PublicationsService {

    Publications addPublication(Publications publication);
    void delete(long id);
    List<Publications> getAll();
}
