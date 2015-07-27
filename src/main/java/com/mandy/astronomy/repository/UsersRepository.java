package com.mandy.astronomy.repository;

import com.mandy.astronomy.entity.Users;
import org.springframework.data.jpa.repository.JpaRepository;

public interface UsersRepository extends JpaRepository<Users, Long>{
    public Users findByName(String name);
}
