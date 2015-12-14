package com.mandy.astronomy.controller;

import com.mandy.astronomy.entity.Users;
import com.mandy.astronomy.service.UsersService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.authentication.AnonymousAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
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

    @RequestMapping(value = "/header")
    public String getHeader(){
        return "header";
    }

    @RequestMapping(value = "/home")
    public String getHome(Model model){
        Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
        if (!(authentication instanceof AnonymousAuthenticationToken)){
            UserDetails userDetails = (UserDetails) authentication.getPrincipal();
            model.addAttribute("username", userDetails.getUsername());
        }

        return "home";
    }

    @RequestMapping(value = "/left_side_addition")
    public String getLeftSiteAddition(Model model) {
        Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
        if (!(authentication instanceof AnonymousAuthenticationToken)){
            UserDetails userDetails = (UserDetails) authentication.getPrincipal();
            model.addAttribute("username", userDetails.getUsername());
        }

        return  "left_side_addition";
    }

    @RequestMapping(value = "/linear_navigation")
    public String getlinear_navigation(Model model){
        Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
        if (!(authentication instanceof AnonymousAuthenticationToken)){
            UserDetails userDetails = (UserDetails) authentication.getPrincipal();
            model.addAttribute("username", userDetails.getUsername());
        }
        return "linear_navigation";
    }

    @RequestMapping(value = "/home_ukr")
    public String getHomeUkr(Model model){
        Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
        if (!(authentication instanceof AnonymousAuthenticationToken)){
            UserDetails userDetails = (UserDetails) authentication.getPrincipal();
            model.addAttribute("username", userDetails.getUsername());
        }

        return "home_ukr";
    }

    @RequestMapping(value = "/navigation")
    public String getNavigation(Model model){
        Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
        if (!(authentication instanceof AnonymousAuthenticationToken)){
            UserDetails userDetails = (UserDetails) authentication.getPrincipal();
            model.addAttribute("username", userDetails.getUsername());
        }

        return "navigation";
    }

    @RequestMapping(value = "/footer_ukr")
    public String getFooterUkr(Model model){
        Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
        if (!(authentication instanceof AnonymousAuthenticationToken)){
            UserDetails userDetails = (UserDetails) authentication.getPrincipal();
            model.addAttribute("username", userDetails.getUsername());
        }

        return "footer_ukr";
    }

    @RequestMapping(value = "/header_ukr")
    public String getHeaderUkr(Model model){
        Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
        if (!(authentication instanceof AnonymousAuthenticationToken)){
            UserDetails userDetails = (UserDetails) authentication.getPrincipal();
            model.addAttribute("username", userDetails.getUsername());
        }

        return "header_ukr";
    }

    @RequestMapping(value = "/login", method = RequestMethod.POST)
    public String checkUser(
            @RequestParam("name") String name,
            @RequestParam("pass") String pass)
    {
        List<Users> usersList = usersService.getAll();
        int size = usersList.size();
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
        return "planets";
    }
}
