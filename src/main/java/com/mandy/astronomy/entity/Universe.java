package com.mandy.astronomy.entity;

import javax.persistence.*;

@Entity(name = "universe")
public class Universe {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "universe_id")
    private byte id;

    @Column(name = "universe_name")
    private String name;

    @Column(name = "universe_about")
    private String about;

    public Universe(){}

    public Universe(String name, String about){
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
