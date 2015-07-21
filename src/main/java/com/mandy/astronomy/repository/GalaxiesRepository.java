package com.mandy.astronomy.repository;

import com.mandy.astronomy.entity.Galaxies;
import org.springframework.data.jpa.repository.JpaRepository;

public interface GalaxiesRepository extends JpaRepository<Galaxies, Long> {
    public Galaxies findByName(String name);
}
