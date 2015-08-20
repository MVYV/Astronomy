package com.mandy.astronomy.service;


import com.mandy.astronomy.entity.News;

import java.util.List;

public interface NewsService {

    News addNews(News news);
    void delete(long id);
    News getByTitle(String title);
    List<News> getAll();
}
