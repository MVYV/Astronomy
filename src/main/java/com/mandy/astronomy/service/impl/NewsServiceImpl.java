package com.mandy.astronomy.service.impl;

import com.mandy.astronomy.entity.News;
import com.mandy.astronomy.repository.NewsRepository;
import com.mandy.astronomy.service.NewsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class NewsServiceImpl implements NewsService{

    @Autowired
    private NewsRepository newsRepository;

    @Override
    public News addNews(News news){
        return newsRepository.save(news);
    }

    @Override
    public void delete(long id){
        newsRepository.delete(id);
    }

    @Override
    public News getByTitle(String titele) { return newsRepository.findByTitle(titele); }

    @Override
    public List<News> getAll(){
        return newsRepository.findAll();
    }
}
