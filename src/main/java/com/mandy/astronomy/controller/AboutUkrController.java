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
public class AboutUkrController {

    @Autowired
    private PlanetsService planetsService;

    @Autowired
    private StarsService starsService;

    @Autowired
    private GalaxiesService galaxiesService;

    @Autowired
    private SolarSystemService solarSystemService;

    @Autowired
    private UniverseService universeService;

    @Autowired
    private SatellitesService satellitesService;

    @Autowired
    private NewsService newsService;

    @Autowired
    private ConstellationsService constellationsService;

    @RequestMapping(value = "/about_ukr", method = RequestMethod.GET)
    public String getAboutUkr(
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
            for (int i = 0; i < size; i++){ //creating list of numbers for left_side_addition
                random.add(i);
            }
            Collections.shuffle(random);    //shuffling numbers
            Stars star1;
            int id = 1;
            for (int i = 0; i < 5; i++){
                int rndm = random.get(i);
                star1 = starsList.get(rndm);    //getting elements from database which will be on left_side_addition
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

        String subTitle;
        String colOne;
        String colTwo;
        String colThree;
        String about;
        String imagePath;
        String siteTitle;
        byte idPl = 1;
        String ukrLangHelp;
        String engLangHelp;
        if (objectU.equals("planets")){
            Planets planet = planetsService.getByName(name);
            siteTitle = planet.getNameUkr();
            about = planet.getAboutUkr();
            model.addAttribute("about", about);
            imagePath = planet.getImageMain();
            model.addAttribute("mainImage", imagePath);

            String imagesList = planet.getImages();
            String [] imagesResult = imagesList.split(",");
            model.put("objectImages", imagesResult);

            subTitle = "Супутники";
            colOne = "Ім'я";
            colTwo = "Температура (K)";
            colThree = "Планета";
            String nameUkr = planet.getNameUkr();
            model.addAttribute("name", nameUkr);
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
            if (planet.getNameUkr() != ""){
                engLangHelp = "/about?name="+name+"&object=planets";
                ukrLangHelp = "/about_ukr?name="+name+"&object=planets";
            } else {
                engLangHelp = "/about?name="+name+"&object=planets";
                ukrLangHelp = "/lang_help";
            }
            model.put("engLangHelp", engLangHelp);
            model.put("ukrLangHelp", ukrLangHelp);
            model.put("list", listSat);
            model.put("siteTitle", siteTitle);
        }else if (objectU.equals("stars")){
            Stars star = starsService.getByName(name);
            siteTitle = star.getNameUkr();
            imagePath = star.getImageMain();
            model.addAttribute("mainImage", imagePath);

            String imagesList = star.getImages();
            String [] imagesResult = imagesList.split(",");
            model.put("objectImages", imagesResult);

            about = star.getAboutUkr();
            String hide = "display: none";
            String nameUkr = star.getNameUkr();
            if (star.getNameUkr() != ""){
                engLangHelp = "/about?name="+name+"&object=stars";
                ukrLangHelp = "/about_ukr?name="+name+"&object=stars";
            } else {
                engLangHelp = "/about?name="+name+"&object=stars";
                ukrLangHelp = "/lang_help";
            }
            model.put("engLangHelp", engLangHelp);
            model.put("ukrLangHelp", ukrLangHelp);
            model.addAttribute("hide", hide);
            model.addAttribute("about", about);
            model.addAttribute("name", nameUkr);
            model.put("siteTitle", siteTitle);
        }else if (objectU.equals("galaxies")){
            Galaxies galaxy = galaxiesService.getByName(name);
            siteTitle = galaxy.getNameUkr();
            imagePath = galaxy.getImageMain();
            model.addAttribute("mainImage", imagePath);

            String imagesList = galaxy.getImages();
            String [] imagesResult = imagesList.split(",");
            model.put("objectImages", imagesResult);

            about = galaxy.getAboutUkr();
            String hide = "display: none";
            String nameUkr = galaxy.getNameUkr();
            if (galaxy.getNameUkr() != ""){
                engLangHelp = "/about?name="+name+"&object=galaxies";
                ukrLangHelp = "/about_ukr?name="+name+"&object=galaxies";
            } else {
                engLangHelp = "/about?name="+name+"&object=galaxies";
                ukrLangHelp = "/lang_help";
            }
            model.put("engLangHelp", engLangHelp);
            model.put("ukrLangHelp", ukrLangHelp);
            model.addAttribute("hide", hide);
            model.addAttribute("about", about);
            model.addAttribute("name", nameUkr);
            model.put("siteTitle", siteTitle);
        }else if (objectU.equals("solarSystem")){
            SolarSystem solarSystem = solarSystemService.getSolarSystem(idPl);
            siteTitle = solarSystem.getNameUkr();
            imagePath = solarSystem.getMainImage();
            model.addAttribute("mainImage", imagePath);

            String imagesList = solarSystem.getImages();
            String [] imagesResult = imagesList.split(",");
            model.put("objectImages", imagesResult);

            about = solarSystem.getAboutUkr();
            String hide = "display: none";
            String nameUkr = solarSystem.getNameUkr();
            model.addAttribute("hide", hide);
            model.addAttribute("about", about);
            name = solarSystem.getName();
            if (solarSystem.getNameUkr() != ""){
                engLangHelp = "/about?name="+name+"&object=solarSystem";
                ukrLangHelp = "/about_ukr?name="+name+"&object=solarSystem";
            } else {
                engLangHelp = "/about?name="+name+"&object=solarSystem";
                ukrLangHelp = "/lang_help";
            }
            model.put("engLangHelp", engLangHelp);
            model.put("ukrLangHelp", ukrLangHelp);
            model.addAttribute("name", nameUkr);
            model.put("siteTitle", siteTitle);
        }else if (objectU.equals("universe")){
            Universe universe = universeService.getUniverse(idPl);
            siteTitle = universe.getNameUkr();
            imagePath = universe.getMainImage();
            model.addAttribute("mainImage", imagePath);

            String imagesList = universe.getImages();
            String [] imagesResult = imagesList.split(",");
            model.put("objectImages", imagesResult);

            about = universe.getAboutUkr();
            String hide = "display: none";
            String nameUkr = universe.getNameUkr();
            if (universe.getNameUkr() != ""){
                engLangHelp = "/about?name="+name+"&object=universe";
                ukrLangHelp = "/about_ukr?name="+name+"&object=universe";
            } else {
                engLangHelp = "/about?name="+name+"&object=universe";
                ukrLangHelp = "/lang_help";
            }
            model.put("engLangHelp", engLangHelp);
            model.put("ukrLangHelp", ukrLangHelp);
            model.addAttribute("hide", hide);
            model.addAttribute("about", about);
            model.addAttribute("name", nameUkr);
            model.put("siteTitle", siteTitle);
        }else if (objectU.equals("satellites")){
            Satellites satellite = satellitesService.getByName(name);
            siteTitle = satellite.getNameUkr();
            imagePath = satellite.getImageMain();
            model.addAttribute("mainImage", imagePath);

            String imagesList = satellite.getImages();
            String [] imagesResult = imagesList.split(",");
            model.put("objectImages", imagesResult);

            about = satellite.getAboutUkr();
            String hide = "display: none";
            String nameUkr = satellite.getNameUkr();
            if (satellite.getNameUkr() != ""){
                engLangHelp = "/about?name="+name+"&object=satellites";
                ukrLangHelp = "/about_ukr?name="+name+"&object=satellites";
            } else {
                engLangHelp = "/about?name="+name+"&object=satellites";
                ukrLangHelp = "/lang_help";
            }
            model.put("engLangHelp", engLangHelp);
            model.put("ukrLangHelp", ukrLangHelp);
            model.addAttribute("hide", hide);
            model.addAttribute("about", about);
            model.addAttribute("name", nameUkr);
            model.put("siteTitle", siteTitle);
        } else if (objectU.equals("news")){
            News news = newsService.getByTitle(name);
            siteTitle = news.getTitle();
            about = news.getText();
            imagePath = news.getImage();
            String hide = "display: none";
            engLangHelp = "/about?name="+name+"&object=news";
            ukrLangHelp = "/lang_help";
            model.put("engLangHelp", engLangHelp);
            model.put("ukrLangHelp", ukrLangHelp);
            model.addAttribute("mainImage", imagePath);
            model.addAttribute("hide", hide);
            model.addAttribute("hiddenImages", hide);
            model.addAttribute("about", about);
            model.addAttribute("name", name);
            model.put("siteTitle", siteTitle);
        } else if (objectU.equals("constellations")){
            Constellations constellation = constellationsService.getByName(name);
            siteTitle = constellation.getNameUkr();
            imagePath = constellation.getMainImage();
            model.addAttribute("mainImage", imagePath);

            String imagesList = constellation.getImages();
            String [] imagesResult = imagesList.split(",");
            model.put("objectImages", imagesResult);

            about = constellation.getAboutUkr();
            String hide = "display: none";
            String nameUkr = constellation.getNameUkr();
            if (constellation.getNameUkr() != ""){
                engLangHelp = "/about?name="+name+"&object=constellations";
                ukrLangHelp = "/about_ukr?name="+name+"&object=constellations";
            } else {
                engLangHelp = "/about?name="+name+"&object=constellations";
                ukrLangHelp = "/lang_help";
            }
            model.addAttribute("hide", hide);
            model.addAttribute("about", about);
            model.addAttribute("name", nameUkr);
            model.put("siteTitle", siteTitle);
        }
        return "about_ukr";
    }
}
