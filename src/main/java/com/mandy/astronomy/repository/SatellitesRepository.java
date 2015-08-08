package com.mandy.astronomy.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import com.mandy.astronomy.entity.Satellites;

import java.util.List;

public interface SatellitesRepository extends JpaRepository<Satellites, Long> {
    public Satellites findByName(String name);
    public List<Satellites> findByPlanet(String name);
}
