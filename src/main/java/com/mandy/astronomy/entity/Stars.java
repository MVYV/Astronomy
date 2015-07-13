package com.mandy.astronomy.entity;

import javax.persistence.*;

@Entity(name = "stars")
public class Stars {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "id")
    private long id;

    @Column(name = "name")
    private String name;

    @Column(name = "distance")
    private String distance;

    @Column(name = "radius")
    private String radius;

    @Column(name = "about")
    private String about;

    public Stars(){}

    public Stars(String name, String distance, String radius, String about){
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

    public void setDistance(String distance1){
        this.distance = distance1;
    }

    public String getDistance(){
        return distance;
    }

    public void setRadius(String radius){
        this.radius = radius;
    }

    public String getRadius(){
        return radius;
    }

    public void setAbout(String about){ this.about = about; }

    public String getAbout(){ return about; }
}
