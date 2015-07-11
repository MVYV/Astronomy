package com.mandy.astronomy.controller;

import com.mandy.astronomy.entity.Planets;
import com.mandy.astronomy.service.PlanetsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
public class PlanetsController {

    @Autowired
    private PlanetsService planetsService;

//    @RequestMapping(value = "/planets")
//    public String getPlanets(){ return "planets"; }

    @RequestMapping(value = "/planets")
    public List<Planets> getPlanetsList(){
        List<Planets> planetsList = planetsService.getAll();
        System.out.println(planetsList);
        return planetsList;
    }
}
