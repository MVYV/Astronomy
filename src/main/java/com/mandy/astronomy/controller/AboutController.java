package com.mandy.astronomy.controller;

import com.mandy.astronomy.entity.Planets;
import com.mandy.astronomy.service.PlanetsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
//@RequestMapping(value = "/about")
public class AboutController {

    @Autowired
    private PlanetsService planetsService;

    @RequestMapping(value = "/about", method = RequestMethod.GET)
    public String getAbout(
            @RequestParam("name") String name, Model model)
    {
        Planets planet = planetsService.getByName(name);
        String about = planet.getAbout();
        model.addAttribute("about", about);
        return "about";
    }
}
