package com.mandy.astronomy.entity;

import javax.persistence.*;

@Entity(name = "satellites")
public class Satellites implements Comparable<Satellites>{

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "satellites_id")
    private long id;

    @Column(name = "satellites_name")
    private String name;

    @Column(name = "satellites_temperature")
    private double temperature;

    @Column(name = "planet_name")
    private String planet;

    @Column(name = "satellites_about")
    private String about;

    @Column(name = "satellites_radius")
    private double radius;

    @Column(name = "satellites_image")
    private String image;

    public Satellites(){}

    public Satellites(String name, double temperature, String planet, String about, double radius, String image){
        this.name = name;
        this.temperature = temperature;
        this.planet = planet;
        this.about = about;
        this.radius = radius;
        this.image = image;
    }

    public int compareTo(Satellites satellite){
        return name.compareTo(satellite.getName());
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

    public void setTemperature(double temperature){
        this.temperature = temperature;
    }

    public double getTemperature(){
        return temperature;
    }

    public void setPlanet(String planet){
        this.planet = planet;
    }

    public String getPlanet(){
        return planet;
    }

    public void setAbout(String about){
        this.about = about;
    }

    public String getAbout(){
        return about;
    }

    public void setRadius(double radius){
        this.radius = radius;
    }

    public double getRadius(){
        return radius;
    }

    public void setImage(String image){
        this.image = image;
    }

    public String getImage(){
        return image;
    }
}
