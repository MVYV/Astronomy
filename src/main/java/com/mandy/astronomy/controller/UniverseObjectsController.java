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
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

@Controller
public class UniverseObjectsController {

    @Autowired
    private PlanetsService planetsService;

    @Autowired
    private StarsService starsService;

    @Autowired
    private GalaxiesService galaxiesService;

    @Autowired
    private SatellitesService satellitesService;

    @Autowired
    private NewsService newsService;

    @RequestMapping(value = "/universeobjects", method = RequestMethod.GET)
    public String getPlanet(
            @RequestParam("object") String objectU, ModelMap model)
    {

        List<News> newsList = newsService.getAll();
        model.put("newsList", newsList);

        Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
        if (!(authentication instanceof AnonymousAuthenticationToken)){
            UserDetails userDetails = (UserDetails) authentication.getPrincipal();
            model.addAttribute("username", userDetails.getUsername());
        }
        if (objectU.equals("stars")){
            String [] arr = {"Planets", "Galaxies", "Satellites"};
            int random = (int) (Math.random()*10/3);
            String listName = arr[random];
        }

        if (objectU.equals("planets")){
            List<Planets> list = planetsService.getAll();
            model.put("list", list);
        }else if (objectU.equals("stars")){
            List<Stars> listS = starsService.getAll();
            Collections.sort(listS);
            model.put("listS", listS);
        }else if (objectU.equals("galaxies")){
            List<Galaxies> listG = galaxiesService.getAll();
            Collections.sort(listG);
            model.put("listG", listG);
        }else if (objectU.equals("satellites")){
            List<Satellites> listSat = satellitesService.getAll();
            Collections.sort(listSat);
            model.put("listSat", listSat);
        }
        return "universeobjects";
    }

    public void leftAddStars(ModelMap model){
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
    }
}
