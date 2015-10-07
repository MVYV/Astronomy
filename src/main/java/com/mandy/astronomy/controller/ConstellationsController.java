package com.mandy.astronomy.controller;

import com.mandy.astronomy.entity.Constellations;
import com.mandy.astronomy.service.ConstellationsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
public class ConstellationsController {

    @Autowired
    private ConstellationsService constellationsService;

    @RequestMapping(value = "/constellations")
    public String getConstellations(ModelMap model){
        List<Constellations> constellationsList = constellationsService.getAll();
        model.put("constellations", constellationsList);
        return "constellations";
    }
}
