package com.mandy.astronomy.controller;

import com.mandy.astronomy.entity.Satellites;
import com.mandy.astronomy.service.SatellitesService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.authentication.AnonymousAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
public class SatellitesController {

    @Autowired
    private SatellitesService satellitesService;

    @RequestMapping(value = "/satellites")
    public List<Satellites> getSatellitesList(Model model){
        Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
        if (!(authentication instanceof AnonymousAuthenticationToken)){
            UserDetails userDetails = (UserDetails) authentication.getPrincipal();
            model.addAttribute("username", userDetails.getUsername());
        }
        List<Satellites> satellitesList = satellitesService.getAll();
        return satellitesList;
    }
}
