package com.mandy.astronomy.controller;

import com.mandy.astronomy.entity.Stars;
import com.mandy.astronomy.entity.Users;
import com.mandy.astronomy.service.StarsService;
import com.mandy.astronomy.service.UsersService;
import com.mandy.astronomy.service.impl.CustomUserDetailsService;
import org.apache.commons.codec.digest.DigestUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.authentication.AnonymousAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

@Controller
public class ProfileController {

    @Autowired
    private UsersService usersService;

    @Autowired
    private StarsService starsService;

    @RequestMapping(value = "/profile")
    public String getProfile(ModelMap model){
        List<Stars> starsList = starsService.getAll();
        int size = starsList.size();
        List<Stars> stars1 = new ArrayList<>();
        List<Integer> random = new ArrayList<>();
        for (int i = 0; i < size; i++){
            random.add(i);
        }
        Collections.shuffle(random);
        Stars star1;
        int id = 1;
        for (int i = 0; i < 5; i++){
            int rndm = random.get(i);
            star1 = starsList.get(rndm);
            System.out.println(rndm);
            star1.setId(id);
            id++;
            stars1.add(star1);
        }
        model.put("stars", stars1);

        Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
        if (!(authentication instanceof AnonymousAuthenticationToken)){
            UserDetails userDetails = (UserDetails) authentication.getPrincipal();
            model.addAttribute("username", userDetails.getUsername());
        }
        UserDetails userDetails = (UserDetails) authentication.getPrincipal();
        String username = userDetails.getUsername();
        Users user = usersService.getByName(username);
        model.addAttribute("login", user.getName());
        model.addAttribute("email", user.getEmail());
        model.addAttribute("country", user.getCountry());
        model.addAttribute("city", user.getCity());
        model.addAttribute("password", userDetails.getPassword());
        return "profile";
    }

    @RequestMapping(value = "/profile/change")
    public String changeProfile(
            @RequestParam(value = "user_login", required = false) String name,
            @RequestParam(value = "user_email", required = false) String email,
            @RequestParam(value = "user_country", required = false) String country,
            @RequestParam(value = "user_city", required = false) String city,
            @RequestParam(value = "user_password", required = false)String password, ModelMap model
    ){
        List<Stars> starsList = starsService.getAll();
        int size = starsList.size();
        List<Stars> stars1 = new ArrayList<>();
        List<Integer> random = new ArrayList<>();
        for (int i = 0; i < size; i++){
            random.add(i);
        }
        Collections.shuffle(random);
        Stars star1;
        int id = 1;
        for (int i = 0; i < 5; i++){
            int rndm = random.get(i);
            star1 = starsList.get(rndm);
            System.out.println(rndm);
            star1.setId(id);
            id++;
            stars1.add(star1);
        }
        model.put("stars", stars1);

        Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
        if (!(authentication instanceof AnonymousAuthenticationToken)){
            UserDetails userDetails = (UserDetails) authentication.getPrincipal();
            model.addAttribute("username", userDetails.getUsername());
        }
        UserDetails userDetails = (UserDetails) authentication.getPrincipal();
        Users user = usersService.getByName(userDetails.getUsername());
        user.setName(name);
        user.setEmail(email);
        user.setCountry(country);
        user.setCity(city);
        String pass = AuthorizationController.md5Apache(password);
        user.setPassword(pass);
        usersService.updateUser(user);
        model.addAttribute("login", user.getName());
        model.addAttribute("email", user.getEmail());
        model.addAttribute("country", user.getCountry());
        model.addAttribute("city", user.getCity());
        model.addAttribute("password", userDetails.getPassword());
        return "profile";
    }
}
