package com.mandy.astronomy.controller;

import com.mandy.astronomy.entity.*;
import com.mandy.astronomy.service.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.authentication.AnonymousAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.*;

@Controller
public class NewsController {

    @Autowired
    private NewsService newsService;

    @Autowired
    private StarsService starsService;

    @Autowired
    private GalaxiesService galaxiesService;

    @Autowired
    private PlanetsService planetsService;

    @Autowired
    private SatellitesService satellitesService;

    @RequestMapping(value = "/news")
    public String news(ModelMap model){
        Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
        if (!(authentication instanceof AnonymousAuthenticationToken)){
            UserDetails userDetails = (UserDetails) authentication.getPrincipal();
            model.addAttribute("username", userDetails.getUsername());
        }

        List<Stars> starsList = starsService.getAll();
        List<Galaxies> galaxiesList = galaxiesService.getAll();
        List<Satellites> satellitesList = satellitesService.getAll();
        List<Planets> planetsList = planetsService.getAll();
        int size = starsList.size();
        int sizeG = galaxiesList.size();
        int sizeP = planetsList.size();
        int sizeSat = satellitesList.size();
        List<Stars> stars = new ArrayList<>();
        List<Planets> planets = new ArrayList<>();
        List<Galaxies> galaxies = new ArrayList<>();
        List<Satellites> satellites = new ArrayList<>();

        /*
        * get random number which not repeat
        */
        List<Integer> random = new ArrayList<>();
        for (int i = 0; i < size; i++){
            random.add(i);
        }
        Collections.shuffle(random);

        List<Integer> randomP = new ArrayList<>();
        for (int i = 0; i < sizeP; i++){
            randomP.add(i);
        }
        Collections.shuffle(randomP);

        List<Integer> randomG = new ArrayList<>();
        for (int i = 0; i < sizeG; i++){
            randomG.add(i);
        }
        Collections.shuffle(randomG);

        List<Integer> randomSat = new ArrayList<>();
        for (int i = 0; i < sizeSat; i++){
            randomSat.add(i);
        }
        Collections.shuffle(randomSat);

        Stars star;
        int id = 1;
        for (int i = 0; i < 5; i++){
            int rndm = random.get(i);
            star = starsList.get(rndm);
            System.out.println(rndm);
            star.setId(id);
            id++;
            stars.add(star);
        }
        model.put("stars", stars);

        int idG = 1;
        Galaxies galaxy;
        for (int i = 0; i < 5; i++){
            int rndm = randomG.get(i);
            galaxy = galaxiesList.get(rndm);
            System.out.println(rndm);
            galaxy.setId(idG);
            idG++;
            galaxies.add(galaxy);
        }
        model.put("galaxies", galaxies);

        int idP = 1;
        Planets planet;
        for (int i = 0; i < 5; i++){
            int rndm = randomP.get(i);
            planet = planetsList.get(rndm);
            System.out.println(rndm);
            planet.setId(idP);
            idP++;
            planets.add(planet);
        }
        model.put("planets", planets);

        int idSat = 1;
        Satellites satellite;
        for (int i = 0; i < 5; i++){
            int rndm = randomSat.get(i);
            satellite = satellitesList.get(rndm);
            System.out.println(rndm);
            satellite.setId(idSat);
            idSat++;
            satellites.add(satellite);
        }
        model.put("satellites", satellites);

        List<News> newsList = newsService.getAll();
        for (int i = 0; i < newsList.size(); i++){
            News news = newsList.get(i);
            model.addAttribute("news"+i, news);
        }
        return "news";
    }
}
