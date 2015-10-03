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
        UniverseObjectsController uoc = new UniverseObjectsController();

        Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
        if (!(authentication instanceof AnonymousAuthenticationToken)){
            UserDetails userDetails = (UserDetails) authentication.getPrincipal();
            model.addAttribute("username", userDetails.getUsername());
        }

        String title;
        int randomNum = (int) (Math.random()*10);
        int rnd = randomNum/3;
        if (rnd == 0){
            title = "STARS";
            model.addAttribute("title", title);
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
        } else if (rnd == 1){
            title = "PLANETS";
            model.addAttribute("title", title);
            List<Planets> planetsList = planetsService.getAll();
            int sizeP = planetsList.size();
            List<Planets> planets = new ArrayList<>();
            List<Integer> randomP = new ArrayList<>();
            for (int i = 0; i < sizeP; i++){
                randomP.add(i);
            }
            Collections.shuffle(randomP);

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
        } else if (rnd == 2){
            title = "SATELLITES";
            model.addAttribute("title", title);
            List<Satellites> satellitesList = satellitesService.getAll();
            int sizeSat = satellitesList.size();
            List<Satellites> satellites = new ArrayList<>();
            List<Integer> randomSat = new ArrayList<>();
            for (int i = 0; i < sizeSat; i++){
                randomSat.add(i);
            }
            Collections.shuffle(randomSat);
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
        } else {
            title = "GALAXIES";
            model.addAttribute("title", title);
            List<Galaxies> galaxiesList = galaxiesService.getAll();
            int sizeG = galaxiesList.size();
            List<Galaxies> galaxies = new ArrayList<>();
            List<Integer> randomG = new ArrayList<>();
            for (int i = 0; i < sizeG; i++){
                randomG.add(i);
            }
            Collections.shuffle(randomG);
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

//    public List<Stars> leftAddStars(){
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
//        return stars1;
//    }
//
//    public List<Planets> leftAddPlanets(){
//        List<Planets> planetsList = planetsService.getAll();
//        int sizeP = planetsList.size();
//        List<Planets> planets = new ArrayList<>();
//        List<Integer> randomP = new ArrayList<>();
//        for (int i = 0; i < sizeP; i++){
//            randomP.add(i);
//        }
//        Collections.shuffle(randomP);
//
//        int idP = 1;
//        Planets planet;
//        for (int i = 0; i < 5; i++){
//            int rndm = randomP.get(i);
//            planet = planetsList.get(rndm);
//            System.out.println(rndm);
//            planet.setId(idP);
//            idP++;
//            planets.add(planet);
//        }
//        return planets;
//    }
//
//    public List<Galaxies> leftAddGalaxies(){
//        List<Galaxies> galaxiesList = galaxiesService.getAll();
//        int sizeG = galaxiesList.size();
//        List<Galaxies> galaxies = new ArrayList<>();
//        List<Integer> randomG = new ArrayList<>();
//        for (int i = 0; i < sizeG; i++){
//            randomG.add(i);
//        }
//        Collections.shuffle(randomG);
//        int idG = 1;
//        Galaxies galaxy;
//        for (int i = 0; i < 5; i++){
//            int rndm = randomG.get(i);
//            galaxy = galaxiesList.get(rndm);
//            System.out.println(rndm);
//            galaxy.setId(idG);
//            idG++;
//            galaxies.add(galaxy);
//        }
//        return galaxies;
//    }
//
//    public List<Satellites> leftAddSatellites(){
//        List<Satellites> satellitesList = satellitesService.getAll();
//        int sizeSat = satellitesList.size();
//        List<Satellites> satellites = new ArrayList<>();
//        List<Integer> randomSat = new ArrayList<>();
//        for (int i = 0; i < sizeSat; i++){
//            randomSat.add(i);
//        }
//        Collections.shuffle(randomSat);
//        int idSat = 1;
//        Satellites satellite;
//        for (int i = 0; i < 5; i++){
//            int rndm = randomSat.get(i);
//            satellite = satellitesList.get(rndm);
//            System.out.println(rndm);
//            satellite.setId(idSat);
//            idSat++;
//            satellites.add(satellite);
//        }
//        return satellites;
//    }
}
