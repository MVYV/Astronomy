package com.mandy.astronomy.controller;

import com.mandy.astronomy.entity.Stars;
import com.mandy.astronomy.service.StarsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
public class StarsController {

    @Autowired
    private StarsService starsService;

    @RequestMapping(value = "/stars")
    public List<Stars> getStarsList(){
        List<Stars> starsList = starsService.getAll();
        return starsList;
    }
}
