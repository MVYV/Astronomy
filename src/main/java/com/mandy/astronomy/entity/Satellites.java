package com.mandy.astronomy.entity;

import javax.persistence.*;

@Entity(name = "satellites")
public class Satellites {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "id")
    private long id;

    @Column(name = "name")
    private String name;

    @Column(name = "temperature")
    private String temperature;

    @Column(name = "planet_name")
    private String planet_name;

    @Column(name = "about")
    private String about;

    public Satellites(){}

    public Satellites(String name, String temperature, String planet_name, String about){
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

    public void setTemperature(String temperature){
        this.temperature = temperature;
    }

    public String getTemperature(){
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