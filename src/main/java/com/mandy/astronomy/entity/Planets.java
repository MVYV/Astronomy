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

    public Planets(){}

    public Planets(String name, int satellites, double radius,String about){
        this.name = name;
        this.satellites = satellites;
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
}
