package com.mandy.astronomy.repository;


import com.mandy.astronomy.entity.Stars;
import org.springframework.data.jpa.repository.JpaRepository;

public interface StarsRepository extends JpaRepository<Stars, Long> {
    public Stars findByName(String name);
}
