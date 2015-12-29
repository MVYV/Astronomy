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

    @Autowired
    private PlanetsService planetsService;

    @Autowired
    private SatellitesService satellitesService;

    @Autowired
    private GalaxiesService galaxiesService;

    @RequestMapping(value = "/profile")
    public String getProfile(ModelMap model){
        Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
        if (!(authentication instanceof AnonymousAuthenticationToken)){
            UserDetails userDetails = (UserDetails) authentication.getPrincipal();
            model.addAttribute("username", userDetails.getUsername());
        }
        String engLangHelp = "/profile";
        String ukrLangHelp = "/lang_help";
        model.put("engLangHelp", engLangHelp);
        model.put("ukrLangHelp", ukrLangHelp);

        String title;
        String titleTwo;
        int randomNum = (int) (Math.random()*10);
        int rnd = randomNum/4;
        System.out.println("rnd"+rnd);
        int rand = rnd + 2;
        System.out.println("rand"+rand);
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
        } else {
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
        }
        if (rand == 2){
            titleTwo = "SATELLITES";
            model.addAttribute("titleTwo", titleTwo);
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
            titleTwo = "GALAXIES";
            model.addAttribute("titleTwo", titleTwo);
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
                int rndm = 0;
                if (randomG.get(i) == 7){
                    rndm = randomG.get(5);
                } else {
                    rndm = randomG.get(i);
                }
                galaxy = galaxiesList.get(rndm);
                galaxy.setId(idG);
                idG++;
                galaxies.add(galaxy);
            }
            model.put("galaxies", galaxies);
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
        Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
        if (!(authentication instanceof AnonymousAuthenticationToken)){
            UserDetails userDetails = (UserDetails) authentication.getPrincipal();
            model.addAttribute("username", userDetails.getUsername());
        }

        String title;
        String titleTwo;
        int randomNum = (int) (Math.random()*10);
        int rnd = randomNum/4;
        System.out.println("rnd"+rnd);
        int rand = rnd + 2;
        System.out.println("rand"+rand);
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
        } else {
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
        }
        if (rand == 2){
            titleTwo = "SATELLITES";
            model.addAttribute("titleTwo", titleTwo);
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
            titleTwo = "GALAXIES";
            model.addAttribute("titleTwo", titleTwo);
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
                int rndm = 0;
                if (randomG.get(i) == 7){
                    rndm = randomG.get(5);
                } else {
                    rndm = randomG.get(i);
                }
                galaxy = galaxiesList.get(rndm);
                galaxy.setId(idG);
                idG++;
                galaxies.add(galaxy);
            }
            model.put("galaxies", galaxies);
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
