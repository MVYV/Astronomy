package com.mandy.astronomy.controller;

import com.mandy.astronomy.entity.Galaxies;
import com.mandy.astronomy.service.GalaxiesService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
public class GalaxiesController {

    @Autowired
    private GalaxiesService galaxiesService;

    @RequestMapping(value = "/galaxies")
    public List<Galaxies> getGalaxiesList(){
        List<Galaxies> galaxiesList = galaxiesService.getAll();
        return galaxiesList;
    }
}
