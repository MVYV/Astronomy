package com.mandy.astronomy.controller;

import com.mandy.astronomy.entity.News;
import com.mandy.astronomy.entity.Stars;
import com.mandy.astronomy.service.NewsService;
import com.mandy.astronomy.service.StarsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.authentication.AnonymousAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
public class NewsController {

    @Autowired
    private NewsService newsService;

    @Autowired
    private StarsService starsService;

    @RequestMapping(value = "/news")
    public String news(ModelMap model){
        Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
        if (!(authentication instanceof AnonymousAuthenticationToken)){
            UserDetails userDetails = (UserDetails) authentication.getPrincipal();
            model.addAttribute("username", userDetails.getUsername());
        }

        List<News> newsList = newsService.getAll();
//        model.put("newsList", newsList);
        for (int i = 0; i < newsList.size(); i++){
            News news = newsList.get(i);
            model.addAttribute("news"+i, news);
        }
        return "news";
    }
}
