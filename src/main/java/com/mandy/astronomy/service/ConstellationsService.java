package com.mandy.astronomy.service;

import com.mandy.astronomy.entity.Constellations;
import org.springframework.stereotype.Service;

import java.util.List;

public interface ConstellationsService {

    Constellations addConstellations(Constellations constellation);
    void delete(long id);
    Constellations getByName(String name);
    List<Constellations> getAll();
}
