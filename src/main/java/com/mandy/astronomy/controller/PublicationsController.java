package com.mandy.astronomy.controller;

import com.mandy.astronomy.entity.Publications;
import com.mandy.astronomy.service.PublicationsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.authentication.AnonymousAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;

@Controller
public class PublicationsController {

    @Autowired
    private PublicationsService publicationsService;

    @RequestMapping(value = "/publications")
    public String getPublications(ModelMap model) {
        Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
        if (!(authentication instanceof AnonymousAuthenticationToken)){
            UserDetails userDetails = (UserDetails) authentication.getPrincipal();
            model.addAttribute("username", userDetails.getUsername());
        }

        List<Publications> publicationsList = publicationsService.getAll();
        model.put("publications", publicationsList);
        return "publications";
    }

    @RequestMapping(value = "/publications/newpublication")
    public String addNewPublication(
            @RequestParam(value = "authorName", required = true) String author,
            @RequestParam(value = "publicationTitle", required = true) String title,
            @RequestParam(value = "publicationA", required = true) String annotation,
            @RequestParam(value = "publicationText", required = true) String text,
            @RequestParam(value = "publicationImg", required = false) String img, ModelMap model)
    {
        Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
        if (!(authentication instanceof AnonymousAuthenticationToken)){
            UserDetails userDetails = (UserDetails) authentication.getPrincipal();
            model.addAttribute("username", userDetails.getUsername());
        }

        String image = "none";
        if (img == null){
            img = image;
        }
        Publications publication = new Publications(author, title, text, img, annotation);
        publicationsService.addPublication(publication);
        return "publications";
    }
}
