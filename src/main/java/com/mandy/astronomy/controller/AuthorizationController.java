package com.mandy.astronomy.controller;

import com.mandy.astronomy.entity.Role;
import com.mandy.astronomy.entity.Users;
import com.mandy.astronomy.service.RoleService;
import com.mandy.astronomy.service.UsersService;
import org.apache.commons.codec.digest.DigestUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class AuthorizationController {

    @Autowired
    private UsersService usersService;

    @Autowired
    private RoleService roleService;

    @RequestMapping(value = "/registration", method = RequestMethod.POST)
    public String registration(
            @RequestParam(value = "user_login", required = false) String name,
            @RequestParam(value = "user_email", required = false) String email,
            @RequestParam(value = "user_country", required = false) String country,
            @RequestParam(value = "user_city", required = false) String city,
            @RequestParam(value = "user_password", required = false) String pwd
    ){
        String pass = AuthorizationController.md5Apache(pwd);
        Users user = new Users(name, email, country, city, pass);
        Role role = new Role(name, "ROLE_USER");
        usersService.addUser(user);
        roleService.addRole(role);
//        try {
//            UserDetails userDetails = userDetailsService.loadUserByUsername(user.getEmail());
//            UsernamePasswordAuthenticationToken authenticationToken =
//                    new UsernamePasswordAuthenticationToken(userDetails, user.getPassword(), userDetails.getAuthorities());
//            authenticationManager.authenticate(authenticationToken);
//
//            if(authenticationToken.isAuthenticated()) {
//                SecurityContextHolder.getContext().setAuthentication(authenticationToken);
//            }
//        } catch (Exception e) {
//            e.printStackTrace("Error of auto login user.");
//        }
//        }
        return "index";
    }

    public static String md5Apache(String st) {
        String md5Hex = DigestUtils.md5Hex(st);
        return md5Hex;
    }
}
