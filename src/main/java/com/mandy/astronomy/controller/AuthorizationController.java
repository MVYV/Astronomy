package com.mandy.astronomy.controller;

import com.mandy.astronomy.entity.Role;
import com.mandy.astronomy.entity.Stars;
import com.mandy.astronomy.entity.Users;
import com.mandy.astronomy.service.RoleService;
import com.mandy.astronomy.service.StarsService;
import com.mandy.astronomy.service.UsersService;
import org.apache.commons.codec.digest.DigestUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

@Controller
public class AuthorizationController {

    @Autowired
    private UsersService usersService;

    @Autowired
    private RoleService roleService;

    @Autowired
    private UserDetailsService userDetailsService;

    @Autowired
    private AuthenticationManager authenticationManager;

    @Autowired
    private StarsService starsService;

    @RequestMapping(value = "/registration", method = RequestMethod.POST)
    public String registration(
            @RequestParam(value = "user_login", required = false) String name,
            @RequestParam(value = "user_email", required = false) String email,
            @RequestParam(value = "user_country", required = false) String country,
            @RequestParam(value = "user_city", required = false) String city,
            @RequestParam(value = "user_password", required = false) String pwd, ModelMap model
    ){
//        List<Stars> starsList = starsService.getAll();
//        int size = starsList.size();
//        List<Stars> stars1 = new ArrayList<>();
//        List<Integer> random = new ArrayList<>();
//        for (int i = 0; i < size; i++){
//            random.add(i);
//        }
//        Collections.shuffle(random);
//        Stars star1;
//        int id = 1;
//        for (int i = 0; i < 5; i++){
//            int rndm = random.get(i);
//            star1 = starsList.get(rndm);
//            System.out.println(rndm);
//            star1.setId(id);
//            id++;
//            stars1.add(star1);
//        }
//        model.put("stars", stars1);

        String pass = AuthorizationController.md5Apache(pwd);
        Users user = new Users(name, email, country, city, pass);
        Role role = new Role(name, "ROLE_USER");
        usersService.addUser(user);
        roleService.addRole(role);
		
		/*setPassword because for autologining you need to have password with letters not in hex*/
        user.setPassword(pwd);
        autoLogin(user);
        return "index";
    }

    public static String md5Apache(String st) {
        String md5Hex = DigestUtils.md5Hex(st);
        return md5Hex;
    }

    public void autoLogin(Users user) {
        try {
            UserDetails userDetails = userDetailsService.loadUserByUsername(user.getName());
            UsernamePasswordAuthenticationToken authenticationToken =
                    new UsernamePasswordAuthenticationToken(userDetails, user.getPassword(), userDetails.getAuthorities());
            authenticationManager.authenticate(authenticationToken);

            if (authenticationToken.isAuthenticated()) {
                SecurityContextHolder.getContext().setAuthentication(authenticationToken);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
