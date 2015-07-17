package com.mandy.astronomy.controller;

import com.mandy.astronomy.entity.Planets;
import com.mandy.astronomy.service.PlanetsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

@Controller
public class RootController {

    @Autowired
    private PlanetsService planetsService;

    @RequestMapping(value = "/")
    public String getIndex(){
        return "index";
    }

    @RequestMapping(value = "/about")
    public String getAbout(){
        return "about";
    }

    @RequestMapping(value = "/aboutc", method = RequestMethod.GET)
    public @ResponseBody
    Planets getAbout(
            @RequestParam(value = "name", required = true) String name)
    {
        Planets planet = planetsService.getByName(name);
        return planet;
    }
}
