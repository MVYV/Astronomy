package com.mandy.astronomy.entity;

import javax.persistence.*;

@Entity(name = "users")
public class Users {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "users_id")
    private long id;

    @Column(name = "users_name")
    private String name;

    @Column(name = "users_email")
    private String email;

    @Column(name = "users_password")
    private String password;

    @Column(name = "users_country")
    private String country;

    @Column(name = "users_city")
    private String city;

    public Users(){}

    public Users(String name, String email, String country, String city, String password){
        this.name = name;
        this.email = email;
        this.password = password;
        this.country = country;
        this.city = city;
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

    public void setEmail(String email){
        this.email = email;
    }

    public String getEmail(){
        return email;
    }

    public void setPassword(String password){
        this.password = password;
    }

    public String getPassword(){
        return password;
    }

    public void setCountry(String country){
        this.country = country;
    }

    public String getCountry(){
        return country;
    }

    public void setCity(String city){
        this.city = city;
    }

    public String getCity(){ return city; }
}
