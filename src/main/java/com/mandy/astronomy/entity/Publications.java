package com.mandy.astronomy.entity;

import javax.persistence.*;

@Entity(name = "publications")
public class Publications {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "publications_id")
    private long id;

    @Column(name = "publications_author")
    private String author;

    @Column(name = "publications_title")
    private String title;

    @Column(name = "publications_text")
    private String text;

    @Column(name = "publications_image")
    private String image;

    @Column(name = "publications_annotation")
    private String annotation;

    public Publications(){}

    public Publications(String author, String title, String text, String image, String annotation){
        this.author = author;
        this.title = title;
        this.text = text;
        this.image = image;
        this.annotation = annotation;
    }

    public void setId(long id) {
        this.id = id;
    }

    public long getId() {
        return id;
    }

    public void setAuthor(String author) {
        this.author = author;
    }

    public String getAuthor() {
        return author;
    }

    public void setImage(String image) {
        this.image = image;
    }

    public String getImage() {
        return image;
    }

    public void setText(String text) {
        this.text = text;
    }

    public String getText() {
        return text;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getTitle() {
        return title;
    }

    public void setAnnotation(String annotation) {
        this.annotation = annotation;
    }

    public String getAnnotation() {
        return annotation;
    }
}
