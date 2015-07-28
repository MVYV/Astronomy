package com.mandy.astronomy.controller;

import com.mandy.astronomy.entity.*;
import com.mandy.astronomy.service.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;

@Controller
public class PlanetsController {


//    @RequestMapping(value = "/planets")
//    public String getPlanets(){ return "planets"; }

//    @RequestMapping(value = "/planets")
//    public List<Planets> getPlanetsList(){
//        List<Planets> planetsList = planetsService.getAll();
//        System.out.println(planetsList);
//        return planetsList;
//    }

    @Autowired
    private PlanetsService planetsService;

    @Autowired
    private StarsService starsService;

    @Autowired
    private GalaxiesService galaxiesService;

    @Autowired
    private SolarSytemService solarSytemService;

    @Autowired
    private UniverseService universeService;

    @Autowired
    private SatellitesService satellitesService;

    @RequestMapping(value = "/planets", method = RequestMethod.GET)
    public String getPlanet(
            @RequestParam("page") String page, ModelMap model)
    {
        String about = "sdsd";
        byte id = 1;
        if (page.equals("planets")){
            List<Planets> list = planetsService.getAll();
            model.put("list", list);
            return "planets";
        }else if (page.equals("stars")){
            List<Stars> listS = starsService.getAll();
            model.put("listS", listS);
            return "planets";
        }else if (page.equals("galaxies")){
            List<Galaxies> listG = galaxiesService.getAll();
            model.put("listG", listG);
            return "planets";
        }
        return "planets";
    }
}
