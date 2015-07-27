package com.mandy.astronomy.service;

import com.mandy.astronomy.entity.Satellites;

import java.util.List;

public interface SatellitesService {

    Satellites addSatellite(Satellites satellite);
    void delete(long id);
    Satellites getByName(String name);
    List<Satellites> getAll();
}
