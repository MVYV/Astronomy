package com.mandy.astronomy.entity;

import javax.persistence.*;

@Entity(name = "solar_system")
public class SolarSystem {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "ss_id")
    private byte id;

    @Column(name = "ss_name")
    private String name;

    @Column(name = "ss_about")
    private String about;

    @Column(name = "ss_main_image")
    private String mainImage;

    @Column(name = "ss_images")
    private String images;

    public SolarSystem(){}

    public SolarSystem(String name, String about, String mainImage, String images){
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
