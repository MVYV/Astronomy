package com.mandy.astronomy.entity;

import javax.persistence.*;

@Entity(name = "planets")
public class Planets {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "planets_id")
    private long id;

    @Column(name = "planets_name")
    private String name;

    @Column(name = "planets_satellites")
    private int satellites;

    @Column(name = "planets_radius")
    private double radius;

    @Column(name = "planets_about")
    private String about;

    @Column(name = "planets_temperature")
    private double temperature;

    @Column(name = "planets_image")
    private String image;

    public Planets(){}

    public Planets(String name, int satellites, double radius,String about, double temperature, String image){
        this.name = name;
        this.satellites = satellites;
        this.radius = radius;
        this.about = about;
        this.temperature = temperature;
        this.image = image;
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

    public void setSatellites(int satellites){
        this.satellites = satellites;
    }

    public int getSatellites(){
        return satellites;
    }

    public void setRadius(double radius){
        this.radius = radius;
    }

    public double getRadius(){
        return radius;
    }

    public void setAbout(String about){ this.about = about; }

    public String getAbout(){ return about; }

    public void setTemperature(double temperature){
        this.temperature =temperature;
    }

    public double getTemperature(){
        return temperature;
    }

    public void setImage(String image){
        this.image = image;
    }

    public String getImage(){
        return image;
    }
}
