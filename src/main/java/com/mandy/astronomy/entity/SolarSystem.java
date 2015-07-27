package com.mandy.astronomy.entity;

import javax.persistence.*;

@Entity(name = "solar_system")
public class SolarSystem {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "ss_id")
    private byte id;

    @Column(name = "ss_name")
    private String name;

    @Column(name = "ss_about")
    private String about;

    public SolarSystem(){}

    public SolarSystem(String name, String about){
        this.name = name;
        this.about = about;
    }

    public void setId(byte id){
        this.id = id;
    }

    public byte getId(){
        return id;
    }

    public void setName(String name){
        this.name = name;
    }

    public String getName(){
        return name;
    }

    public void setAbout(String about){
        this.about = about;
    }

    public String getAbout(){
        return about;
    }
}
