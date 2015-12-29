package com.mandy.astronomy.controller;

import org.springframework.security.authentication.AnonymousAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class IndexUkrController {

    @RequestMapping(value = "index_ukr")
    public String getIndesUkr(ModelMap model){
        Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
        if (!(authentication instanceof AnonymousAuthenticationToken)){
            UserDetails userDetails = (UserDetails) authentication.getPrincipal();
            model.addAttribute("username", userDetails.getUsername());
        }
        String engLangHelp = "/";
        String ukrLangHelp = "/index_ukr";
        model.put("engLangHelp", engLangHelp);
        model.put("ukrLangHelp", ukrLangHelp);

        return "index_ukr";
    }
}
