package com.mandy.astronomy.entity;

import javax.persistence.*;

@Entity(name = "stars")
public class Stars {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "stars_id")
    private long id;

    @Column(name = "stars_name")
    private String name;

    @Column(name = "stars_distance")
    private double distance;

    @Column(name = "stars_radius")
    private double radius;

    @Column(name = "stars_about")
    private String about;

    public Stars(){}

    public Stars(String name, double distance, double radius, String about){
        this.name = name;
        this.distance = distance;
        this.radius = radius;
        this.about = about;
    }

    public void setId(long id){
        this.id = id;
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

    public void setRadius(double radius){
        this.radius = radius;
    }

    public double getRadius(){
        return radius;
    }

    public void setAbout(String about){ this.about = about; }

    public String getAbout(){ return about; }
}