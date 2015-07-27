package com.mandy.astronomy.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import com.mandy.astronomy.entity.Satellites;

public interface SatellitesRepository extends JpaRepository<Satellites, Long> {
    public Satellites findByName(String name);
}
