package com.mandy.astronomy.service;

import com.mandy.astronomy.entity.Users;

import java.util.List;

public interface UsersService {

    Users addUser(Users user);
    Users updateUser(Users user);
    void delete(long id);
    Users getByName(String name);
    List<Users> getAll();
}
