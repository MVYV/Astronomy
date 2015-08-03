package com.mandy.astronomy.controller;

import com.mandy.astronomy.entity.Users;
import com.mandy.astronomy.service.UsersService;
import org.apache.commons.codec.digest.DigestUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class AuthorizationController {

    @Autowired
    private UsersService usersService;

    @RequestMapping(value = "/registration", method = RequestMethod.POST)
    public String registration(
            @RequestParam("name") String name,
            @RequestParam("email") String email,
            @RequestParam("country") String country,
            @RequestParam("city") String city,
            @RequestParam("pwd") String pwd,
            @RequestParam("pwdConfirm") String pwdConfirm, ModelMap modelMap
    ){
        String mail = AuthorizationController.md5Apache(email);
        Users user = new Users(name, mail, country, city, pwd);
        usersService.addUser(user);
        return "index";
    }

    public static String md5Apache(String st) {
        String md5Hex = DigestUtils.md5Hex(st);
        return md5Hex;
    }
}
