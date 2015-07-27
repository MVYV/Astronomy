package com.mandy.astronomy.service.impl;

import com.mandy.astronomy.entity.Users;
import com.mandy.astronomy.repository.UsersRepository;
import com.mandy.astronomy.service.UsersService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class UsersServiceImpl implements UsersService{

    @Autowired
    private UsersRepository usersRepository;

    @Override
    public Users addUser(Users user){ return usersRepository.save(user); }

    @Override
    public void delete(long id){ usersRepository.delete(id); }

    @Override
    public Users getByName(String name){ return usersRepository.findByName(name); }

    @Override
    public List<Users> getAll(){ return usersRepository.findAll(); }
}
