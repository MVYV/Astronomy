package com.mandy.astronomy.entity;

import javax.persistence.*;

@Entity(name = "news")
public class News {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "news_id")
    private long id;

    @Column(name = "news_title")
    private String title;

    @Column(name = "news_shorttext")
    private String shortText;

    @Column(name = "news_text")
    private String text;

    @Column(name = "news_image")
    private String image;

    public News(){}

    public News(String title, String shortText, String text, String image){
        this.title = title;
        this.shortText = shortText;
        this.text = text;
        this.image = image;
    }

    public void setId(long id){
        this.id = id;
    }

    public long getId(){
        return id;
    }

    public void setTitle(String title){
        this.title = title;
    }

    public String getTitle(){
        return title;
    }

    public void setShortText(String shortText){
        this.shortText = shortText;
    }

    public String getShortText(){
        return shortText;
    }

    public void setText(String text){
        this.text = text;
    }

    public String getText(){
        return text;
    }

    public void setImage(String image){
        this.image = image;
    }

    public String getImage(){
        return image;
    }
}
