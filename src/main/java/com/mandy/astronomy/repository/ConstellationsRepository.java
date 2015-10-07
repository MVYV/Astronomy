package com.mandy.astronomy.repository;


import com.mandy.astronomy.entity.Constellations;
import org.springframework.data.jpa.repository.JpaRepository;

public interface ConstellationsRepository extends JpaRepository<Constellations, Long>{
    public Constellations findByName(String name);
}
