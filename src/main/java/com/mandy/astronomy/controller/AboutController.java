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

    @Autowired
    private NewsService newsService;

    @Autowired
    private ConstellationsService constellationsService;

    @RequestMapping(value = "/about", method = RequestMethod.GET)
    public String getPlanet(
            @RequestParam("name") String name,
            @RequestParam("object") String objectU, ModelMap model)
    {
        Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
        if (!(authentication instanceof AnonymousAuthenticationToken)){
            UserDetails userDetails = (UserDetails) authentication.getPrincipal();
            model.addAttribute("username", userDetails.getUsername());
        }

        String title;
        String titleTwo;
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
                int rndm = randomG.get(i);
                galaxy = galaxiesList.get(rndm);
                System.out.println(rndm);
                galaxy.setId(idG);
                idG++;
                galaxies.add(galaxy);
            }
            model.put("galaxies", galaxies);
        }

        String subTitle;
        String colOne;
        String colTwo;
        String colThree;
        String about;
        String imagePath;
        byte idPl = 1;
        if (objectU.equals("planets")){
            Planets planet = planetsService.getByName(name);
            about = planet.getAbout();
            model.addAttribute("about", about);
            imagePath = planet.getImageMain();
            model.addAttribute("mainImage", imagePath);

            String imagesList = planet.getImages();
            String [] imagesResult = imagesList.split(",");
            model.put("objectImages", imagesResult);

            subTitle = name + "'s satellites";
            if (name.equals("Uranus")){
                subTitle = name + "' satellites";
            }
            colOne = "Name";
            colTwo = "Temperature (K)";
            colThree = "Planet";
            model.addAttribute("name", name);
            model.addAttribute("subTitle", subTitle);
            model.addAttribute("colOne", colOne);
            model.addAttribute("colTwo", colTwo);
            model.addAttribute("colThree", colThree);
            List<Satellites> listSat = satellitesService.getByPlanetName(name);
            int listSize = listSat.size();
            if (listSize < 1){
                String hide = "display: none";
                model.addAttribute("hide", hide);
            }
            model.put("list", listSat);
        }else if (objectU.equals("stars")){
            Stars star = starsService.getByName(name);
            imagePath = star.getImageMain();
            model.addAttribute("mainImage", imagePath);

            String imagesList = star.getImages();
            String [] imagesResult = imagesList.split(",");
            model.put("objectImages", imagesResult);

            about = star.getAbout();
            String hide = "display: none";;
            model.addAttribute("hide", hide);
            model.addAttribute("about", about);
            model.addAttribute("name", name);
        }else if (objectU.equals("galaxies")){
            Galaxies galaxy = galaxiesService.getByName(name);
            imagePath = galaxy.getImageMain();
            model.addAttribute("mainImage", imagePath);

            String imagesList = galaxy.getImages();
            String [] imagesResult = imagesList.split(",");
            model.put("objectImages", imagesResult);

            about = galaxy.getAbout();
            String hide = "display: none";
            model.addAttribute("hide", hide);
            model.addAttribute("about", about);
            model.addAttribute("name", name);
        }else if (objectU.equals("solarSystem")){
            SolarSystem solarSystem = solarSytemService.getSolarSystem(idPl);
            about = solarSystem.getAbout();
            String hide = "display: none";
            String hiddenNewsImage = "display: none";
            model.addAttribute("hiddenNewsImage", hiddenNewsImage);
            model.addAttribute("hide", hide);
            model.addAttribute("about", about);
            name = solarSystem.getName();
            model.addAttribute("name", name);
        }else if (objectU.equals("universe")){
            Universe universe = universeService.getUniverse(idPl);
            about = universe.getAbout();
            String hide = "display: none";
            String hiddenNewsImage = "display: none";
            model.addAttribute("hiddenNewsImage", hiddenNewsImage);
            model.addAttribute("hide", hide);
            model.addAttribute("about", about);
            model.addAttribute("name", name);
        }else if (objectU.equals("satellites")){
            Satellites satellite = satellitesService.getByName(name);
            imagePath = satellite.getImageMain();
            model.addAttribute("mainImage", imagePath);

            String imagesList = satellite.getImages();
            String [] imagesResult = imagesList.split(",");
            model.put("objectImages", imagesResult);

            about = satellite.getAbout();
            String hide = "display: none";
            model.addAttribute("hide", hide);
            model.addAttribute("about", about);
            model.addAttribute("name", name);
        } else if (objectU.equals("news")){
            News news = newsService.getByTitle(name);
            about = news.getText();
            imagePath = news.getImage();
            String hide = "display: none";
            model.addAttribute("mainImage", imagePath);
            model.addAttribute("hide", hide);
            model.addAttribute("hiddenImages", hide);
            model.addAttribute("about", about);
            model.addAttribute("name", name);
        } else if (objectU.equals("constellations")){
            Constellations constellation = constellationsService.getByName(name);
//            imagePath = constellation.getImageMain();
//            model.addAttribute("mainImage", imagePath);

            String imagesList = constellation.getImages();
            String [] imagesResult = imagesList.split(",");
            model.put("objectImages", imagesResult);

            about = constellation.getAbout();
            String hide = "display: none";
            model.addAttribute("hide", hide);
            model.addAttribute("about", about);
            model.addAttribute("name", name);
        }
        return "about";
    }
}
