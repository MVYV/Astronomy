package com.mandy.astronomy.repository;

import com.mandy.astronomy.entity.Role;
import org.springframework.data.jpa.repository.JpaRepository;

public interface RoleRepository extends JpaRepository<Role, Long> {
}