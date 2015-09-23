package com.mandy.astronomy.entity;

import javax.persistence.*;

@Entity(name = "galaxies")
public class Galaxies implements Comparable<Galaxies>{

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "galaxies_id")
    private long id;

    @Column(name = "galaxies_name")
    private String name;

    @Column(name = "galaxies_distance")
    private double distance;

    @Column(name = "galaxies_type")
    private String type;

    @Column(name = "galaxies_about")
    private String about;

    @Column(name = "galaxies_image")
    private String image;

    @Column(name = "galaxies_mainimage")
    private String imageMain;

    @Column(name = "galaxies_images")
    private String images;
    
    public Galaxies(){}

    public Galaxies(String name, double distance, String type, String about,String image, String images, String imageMain){
        this.name = name;
        this.distance = distance;
        this.type = type;
        this.about = about;
        this.image = image;
        this.images = images;
        this.imageMain = imageMain;
    }

    public int compareTo(Galaxies galaxy){
        return name.compareTo(galaxy.getName());
    }

    public void setId(long id){
        this.id =id;
    }

    public long getId(){
        return id;
    }

    public void setName(String name){
        this.name = name;
    }

    public String getName(){
        return name;
    }

    public void setDistance(double distance){
        this.distance = distance;
    }

    public double getDistance(){
        return distance;
    }

    public void setType(String type){
        this.type = type;
    }

    public String getType(){
        return type;
    }

    public void setAbout(String about){ this.about = about; }

    public String getAbout(){ return about; }

    public void setImage(String image){
        this.image = image;
    }

    public String getImage(){
        return image;
    }

    public void setImages(String images) { this.images = images; }

    public String getImages(){ return images; }

    public void setImageMain(String imageMain) { this.imageMain = imageMain; }

    public String getImageMain() { return imageMain; }
}
