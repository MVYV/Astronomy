package com.mandy.astronomy.repository;


import com.mandy.astronomy.entity.News;
import org.springframework.data.jpa.repository.JpaRepository;

public interface NewsRepository extends JpaRepository<News, Long>{
    public News findByTitle(String title);
}
