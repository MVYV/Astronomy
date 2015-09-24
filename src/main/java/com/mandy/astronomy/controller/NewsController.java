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

import java.util.*;

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

        List<Stars> starsList = starsService.getAll();
        List<Stars> stars = new ArrayList<>();
        HashSet<Integer> random = new HashSet<>();
//        for (int i = 0; i <5; i++){
            while (random.size() < 6) {
                int rand = (int) (Math.random() * 10);
                random.add(rand);
            }
        Iterator iterator = random.iterator();
        int id = 1;
        while (iterator.hasNext()) {
            System.out.print(iterator.next());
            int rand = (int) iterator.next();
            Stars star = starsList.get(rand);
            star.setId(id);
            //i++;
            stars.add(star);
        }
//        }
        model.put("stars", stars);

        List<News> newsList = newsService.getAll();
        for (int i = 0; i < newsList.size(); i++){
            News news = newsList.get(i);
            model.addAttribute("news"+i, news);
        }
        return "news";
    }
}
