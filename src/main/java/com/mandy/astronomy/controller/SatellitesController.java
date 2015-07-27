package com.mandy.astronomy.controller;

import com.mandy.astronomy.entity.Satellites;
import com.mandy.astronomy.service.SatellitesService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
public class SatellitesController {

    @Autowired
    private SatellitesService satellitesService;

    @RequestMapping(value = "/satellites")
    public List<Satellites> getSatellitesList(){
        List<Satellites> satellitesList = satellitesService.getAll();
        return satellitesList;
    }
}
