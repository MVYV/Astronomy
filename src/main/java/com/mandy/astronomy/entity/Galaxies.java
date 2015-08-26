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
    
    public Galaxies(){}

    public Galaxies(String name, double distance, String type, String about,String image){
        this.name = name;
        this.distance = distance;
        this.type = type;
        this.about = about;
        this.image = image;
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
}
