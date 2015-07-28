package com.mandy.astronomy.controller;

import com.mandy.astronomy.entity.Users;
import com.mandy.astronomy.service.UsersService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;

@Controller
public class RootController {

    @Autowired
    private UsersService usersService;

    @RequestMapping(value = "/")
    public String getIndex(){
        return "index";
    }

    @RequestMapping(value = "/linear_navigation")
    public String getlinear_navigation(){
        return "linear_navigation";
    }

    @RequestMapping(value = "/authorization")
    public String getAuthorization(){
        return "authorization";
    }

    @RequestMapping(value = "/login", method = RequestMethod.POST)
    public String checkUser(
            @RequestParam("name") String name,
            @RequestParam("pass") String pass)
    {
        List<Users> usersList = usersService.getAll();
        int size = usersList.size();
//        boolean check;
        for (int i =0; i < size; i++){
            Users user = usersList.get(i);
            String uname = user.getName();
            String upass = user.getPassword();
            if (name.equals(uname) && pass.equals(upass)){
                return "linear_navigation";
            } else {
                return "index";
            }
        }
        return "stars";
    }
}
