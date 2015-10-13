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
import org.springframework.web.multipart.MultipartFile;

import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
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
            @RequestParam(value = "publicationImg", required = false) MultipartFile file, ModelMap model)
    {
        Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
        if (!(authentication instanceof AnonymousAuthenticationToken)){
            UserDetails userDetails = (UserDetails) authentication.getPrincipal();
            model.addAttribute("username", userDetails.getUsername());
        }


        String name = file.getOriginalFilename();
        String workingDir = PublicationsController.class.getResource("").getPath();
        String pathForImage = workingDir+"../../../../../../../../src/main/webapp/resources/publicationsImages/";
        if (!file.isEmpty()){
            try {
                byte [] bytes = file.getBytes();
                BufferedOutputStream stream = new BufferedOutputStream(new FileOutputStream(new File(pathForImage + name)));
                stream.write(bytes);
                stream.close();
            } catch (Exception e){
                e.printStackTrace();
            }
        } else {
            System.out.println("Failed");
        }

        DateFormat dateFormat = new SimpleDateFormat("dd.MM.yyyy");
        Date date = new Date();
        String img = "/resources/publicationsImages/" + name;
        Publications publication = new Publications(author, title, text, img, annotation, dateFormat.format(date));
        publicationsService.addPublication(publication);
        List<Publications> publicationsList = publicationsService.getAll();
        model.put("publications", publicationsList);
        return "publications";
    }
}
