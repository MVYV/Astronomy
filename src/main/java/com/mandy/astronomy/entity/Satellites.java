package com.mandy.astronomy.entity;

import javax.persistence.*;

@Entity(name = "satellites")
public class Satellites {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "satellites_id")
    private long id;

    @Column(name = "satellites_name")
    private String name;

    @Column(name = "satellites_temperature")
    private double temperature;

    @Column(name = "planet_name")
    private String planet_name;

    @Column(name = "satellites_about")
    private String about;

    public Satellites(){}

    public Satellites(String name, double temperature, String planet_name, String about){
        this.name = name;
        this.temperature = temperature;
        this.planet_name = planet_name;
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

    public void setTemperature(double temperature){
        this.temperature = temperature;
    }

    public double getTemperature(){
        return temperature;
    }

    public void setPlanet_name(String planet_name){
        this.planet_name = planet_name;
    }

    public String getPlanet_name(){
        return planet_name;
    }

    public void setAbout(String about){
        this.about = about;
    }

    public String getAbout(){
        return about;
    }
}
