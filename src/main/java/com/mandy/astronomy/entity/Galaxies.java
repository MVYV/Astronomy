package com.mandy.astronomy.entity;

import javax.persistence.*;

@Entity(name = "galaxies")
public class Galaxies {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "id")
    private long id;

    @Column(name = "name")
    private String name;

    @Column(name = "distance")
    private String distance;

    @Column(name = "type")
    private String type;

    @Column(name = "about")
    private String about;
    
    public Galaxies(){}

    public Galaxies(String name, String distance, String type, String about){
        this.name = name;
        this.distance = distance;
        this.type = type;
        this.about = about;
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

    public void setDistance(String distance){
        this.distance = distance;
    }

    public String getDistance(){
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
}