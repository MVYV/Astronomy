package com.mandy.astronomy.controller;

import com.mandy.astronomy.entity.*;
import com.mandy.astronomy.service.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.authentication.AnonymousAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import java.io.File;
import java.net.URL;
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
        String subTitle;
        String colOne;
        String colTwo;
        String colThree;
        String about;
        String imagePath;
        byte id = 1;
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
            SolarSystem solarSystem = solarSytemService.getSolarSystem(id);
            about = solarSystem.getAbout();
            String hide = "display: none";
            String hiddenNewsImage = "display: none";
            model.addAttribute("hiddenNewsImage", hiddenNewsImage);
            model.addAttribute("hide", hide);
            model.addAttribute("about", about);
            name = solarSystem.getName();
            model.addAttribute("name", name);
        }else if (objectU.equals("universe")){
            Universe universe = universeService.getUniverse(id);
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
        }else if (objectU.equals("news")){
            News news = newsService.getByTitle(name);
            about = news.getText();
            imagePath = news.getImage();
            String hide = "display: none";
            model.addAttribute("mainImage", imagePath);
            model.addAttribute("hide", hide);
            model.addAttribute("hiddenImages", hide);
            model.addAttribute("about", about);
            model.addAttribute("name", name);
        }
        return "about";
    }
}
