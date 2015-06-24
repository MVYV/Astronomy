package com.mandy.astronomy.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class RootController {

    @RequestMapping(value = "/")
    public String getIndex(){
        return "index";
    }
}
