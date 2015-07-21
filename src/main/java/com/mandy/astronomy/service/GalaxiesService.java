package com.mandy.astronomy.service;

import com.mandy.astronomy.entity.Galaxies;

import java.util.List;

public interface GalaxiesService {

    Galaxies addGalaxy(Galaxies galaxy);
    void delete(long id);
    Galaxies getByName(String name);
    List<Galaxies> getAll();
}
