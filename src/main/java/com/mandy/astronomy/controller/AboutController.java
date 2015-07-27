package com.mandy.astronomy.controller;

import com.mandy.astronomy.entity.*;
import com.mandy.astronomy.service.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

@Controller
//@RequestMapping(value = "/about")
public class AboutController {

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

    @RequestMapping(value = "/about", method = RequestMethod.GET)
    public String getPlanet(
            @RequestParam("name") String name,
            @RequestParam("page") String page, Model model)
    {
        String about;
        byte id = 1;
        if (page.equals("planets")){
            Planets planet = planetsService.getByName(name);
            about = planet.getAbout();
            model.addAttribute("about", about);
            return "about";
        }else if (page.equals("stars")){
            Stars star = starsService.getByName(name);
            about = star.getAbout();
            model.addAttribute("about", about);
            return "about";
        }else if (page.equals("galaxies")){
            Galaxies galaxy = galaxiesService.getByName(name);
            about = galaxy.getAbout();
            model.addAttribute("about", about);
            return "about";
        }else if (page.equals("solarSystem")){
            SolarSystem solarSystem = solarSytemService.getSolarSystem(id);
            about = solarSystem.getAbout();
            model.addAttribute("about", about);
            return "about";
        }else if (page.equals("universe")){
            Universe universe = universeService.getUniverse(id);
            about = universe.getAbout();
            model.addAttribute("about", about);
            return "about";
        }else if (page.equals("satellites")){
            Satellites satellite = satellitesService.getByName(name);
            about = satellite.getAbout();
            model.addAttribute("about", about);
            return "about";
        }
        return "about";
    }

//    @RequestMapping(value = "/about", method = RequestMethod.GET)
//    public String getStar(
//        @RequestParam("name") String name, Model model)
//    {
//        Stars star = starsService.getByName(name);
//        String about = star.getAbout();
//        model.addAttribute("about", about);
//        return "about";
//    }
}
