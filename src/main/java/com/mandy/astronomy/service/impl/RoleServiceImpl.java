package com.mandy.astronomy.service.impl;

import com.mandy.astronomy.entity.Role;
import com.mandy.astronomy.repository.RoleRepository;
import com.mandy.astronomy.service.RoleService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class RoleServiceImpl implements RoleService{

    @Autowired
    private RoleRepository roleRepository;

    @Override
    public Role addRole(Role role){
        return roleRepository.save(role);
    }
}
