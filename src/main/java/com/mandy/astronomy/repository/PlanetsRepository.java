package com.mandy.astronomy.repository;

import com.mandy.astronomy.entity.Planets;
import org.springframework.data.jpa.repository.JpaRepository;

public interface PlanetsRepository extends JpaRepository<Planets,Long>{
    public Planets findByName(String name);
}
