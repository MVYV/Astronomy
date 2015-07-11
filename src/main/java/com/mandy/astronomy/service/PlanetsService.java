package com.mandy.astronomy.service;

import com.mandy.astronomy.entity.Planets;

import java.util.List;

public interface PlanetsService {

    Planets addPlanet(Planets planet);
    void delete(long id);
    Planets getByName(String name);
    List<Planets> getAll();
}
