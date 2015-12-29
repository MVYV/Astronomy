package com.mandy.astronomy.controller;

import com.mandy.astronomy.entity.Galaxies;
import com.mandy.astronomy.entity.Planets;
import com.mandy.astronomy.entity.Satellites;
import com.mandy.astronomy.entity.Stars;
import com.mandy.astronomy.service.GalaxiesService;
import com.mandy.astronomy.service.PlanetsService;
import com.mandy.astronomy.service.SatellitesService;
import com.mandy.astronomy.service.StarsService;
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
public class UniverseObjectsUkrController {

    @Autowired
    private PlanetsService planetsService;

    @Autowired
    private StarsService starsService;

    @Autowired
    private GalaxiesService galaxiesService;

    @Autowired
    private SatellitesService satellitesService;

    @RequestMapping(value = "/universeobjects_ukr", method = RequestMethod.GET)
    public String getUniverseObjectUkr(
            @RequestParam("object") String objectU, ModelMap model)
    {
        UniverseObjectsController uoc = new UniverseObjectsController();

        Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
        if (!(authentication instanceof AnonymousAuthenticationToken)){
            UserDetails userDetails = (UserDetails) authentication.getPrincipal();
            model.addAttribute("username", userDetails.getUsername());
        }

        String title;
        String titleTwo;
        String siteTitle;
        int randomNum = (int) (Math.random()*10);
        int rnd = randomNum/5;
        System.out.println("rnd"+rnd);
        int rand = rnd + 2;
        System.out.println("rand"+rand);
        if ((rnd == 0 || objectU.equals("planets")) && !objectU.equals("stars")){
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
        } else if ((rnd == 1 || objectU.equals("stars")) && !objectU.equals("planets")){
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
        if ((rand == 2 || objectU.equals("galaxies")) && !objectU.equals("satellites")){
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
        } else if ((rand == 3 || objectU.equals("satellites")) && !objectU.equals("galaxies")){
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

        if (objectU.equals("planets")){
            siteTitle = "Planets";
            List<Planets> list = planetsService.getAll();
            List<Planets> planetsList = new ArrayList<Planets>();
            for (int i = 0; i < list.size(); i++){
                Planets planet = list.get(i);
                if (planet.getNameUkr() != ""){
                    planetsList.add(planet);
                }
            }
            model.put("list", planetsList);
            model.put("siteTitle", siteTitle);
        }else if (objectU.equals("stars")){
            siteTitle = "Stars";
            List<Stars> listS = starsService.getAll();
            List<Stars> starsList = new ArrayList<Stars>();
            for (int i = 0; i < listS.size(); i++){
                Stars star = listS.get(i);
                if (star.getNameUkr() != ""){
                    starsList.add(star);
                }
            }
            Collections.sort(listS);
            model.put("listS", starsList);
            model.put("siteTitle", siteTitle);
        }else if (objectU.equals("galaxies")){
            siteTitle = "Galaxies";
            List<Galaxies> listG = galaxiesService.getAll();
            List<Galaxies> galaxiesList = new ArrayList<Galaxies>();
            for (int i = 0; i < listG.size(); i++){
                Galaxies galaxy = listG.get(i);
                if (galaxy.getNameUkr() != ""){
                    galaxiesList.add(galaxy);
                }
            }
            Collections.sort(listG);
            model.put("listG", galaxiesList);
            model.put("siteTitle", siteTitle);
        }else if (objectU.equals("satellites")){
            siteTitle = "Satellites";
            List<Satellites> listSat = satellitesService.getAll();
            List<Satellites> satellitesList = new ArrayList<Satellites>();
            for (int i = 0; i < listSat.size(); i++){
                Satellites satellite = listSat.get(i);
                if (satellite.getNameUkr() != ""){
                    satellitesList.add(satellite);
                }
            }
            Collections.sort(listSat);
            model.put("listSat", satellitesList);
            model.put("siteTitle", siteTitle);
        }
        return "universeobjects_ukr";
    }
}
