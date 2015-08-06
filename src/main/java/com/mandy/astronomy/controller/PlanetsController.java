package com.mandy.astronomy.controller;

import com.mandy.astronomy.entity.*;
import com.mandy.astronomy.service.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;

@Controller
public class PlanetsController {

    @Autowired
    private PlanetsService planetsService;

    @Autowired
    private StarsService starsService;

    @Autowired
    private GalaxiesService galaxiesService;

    @RequestMapping(value = "/planets", method = RequestMethod.GET)
    public String getPlanet(
            @RequestParam("page") String page, ModelMap model)
    {
        String title;
        String subTitle;
        String colOne;
        String colTwo;
        String colThree;
        if (page.equals("planets")){
            List<Planets> list = planetsService.getAll();
            title = "Planets";
            subTitle = "Planets of The Solar System";
            colOne = "Planet";
            colTwo = "Satellites number";
            colThree = "Radius (km)";
            model.addAttribute("title", title);
            model.addAttribute("subTitle", subTitle);
            model.addAttribute("colOne", colOne);
            model.addAttribute("colTwo", colTwo);
            model.addAttribute("colThree", colThree);
            model.put("list", list);
            return "planets";
        }else if (page.equals("stars")){
            List<Stars> listS = starsService.getAll();
            title = "Stars";
            subTitle = "Stars of The Milky Way";
            colOne = "Star";
            colTwo = "Distance to The Earth (ly)";
            colThree = "Radius (R - Solar radius)";
            model.addAttribute("title", title);
            model.addAttribute("subTitle", subTitle);
            model.addAttribute("colOne", colOne);
            model.addAttribute("colTwo", colTwo);
            model.addAttribute("colThree", colThree);
            model.put("listS", listS);
            return "planets";
        }else if (page.equals("galaxies")){
            List<Galaxies> listG = galaxiesService.getAll();
            title = "Galaxies";
            subTitle = "Galaxies of The Universe";
            colOne = "Galaxy";
            colTwo = "Distance to The Earth (ly)";
            colThree = "Type";
            model.addAttribute("title", title);
            model.addAttribute("subTitle", subTitle);
            model.addAttribute("colOne", colOne);
            model.addAttribute("colTwo", colTwo);
            model.addAttribute("colThree", colThree);
            model.put("listG", listG);
            return "planets";
        }
        return "planets";
    }
}
