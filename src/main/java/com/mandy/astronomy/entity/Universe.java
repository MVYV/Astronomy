package com.mandy.astronomy.entity;

import javax.persistence.*;

@Entity(name = "universe")
public class Universe {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "universe_id")
    private byte id;

    @Column(name = "universe_name")
    private String name;

    @Column(name = "universe_about")
    private String about;

    @Column(name = "universe_main_image")
    private String mainImage;

    @Column(name = "universe_images")
    private String images;

    public Universe(){}

    public Universe(String name, String about, String mainImage, String images){
        this.name = name;
        this.about = about;
        this.mainImage = mainImage;
        this.images = images;
    }

    public void setId(byte id){
        this.id = id;
    }

    public byte getId(){
        return id;
    }

    public void setName(String name){
        this.name = name;
    }

    public String getName(){
        return name;
    }

    public void setAbout(String about){
        this.about = about;
    }

    public String getAbout(){
        return about;
    }

    public void setMainImage(String mainImage) {
        this.mainImage = mainImage;
    }

    public String getMainImage() {
        return mainImage;
    }

    public void setImages(String images) {
        this.images = images;
    }

    public String getImages() {
        return images;
    }
}
