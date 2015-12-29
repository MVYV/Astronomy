package com.mandy.astronomy.entity;

import javax.persistence.*;

@Entity(name = "stars")
public class Stars implements Comparable<Stars>{

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "stars_id")
    private long id;

    @Column(name = "stars_name")
    private String name;

    @Column(name = "stars_distance")
    private double distance;

    @Column(name = "stars_radius")
    private double radius;

    @Column(name = "stars_about")
    private String about;

    @Column(name = "stars_constellation")
    private String constellation;

    @Column(name = "stars_image")
    private String image;

    @Column(name = "stars_mainimage")
    private String imageMain;

    @Column(name = "stars_images")
    private String images;

    @Column(name = "stars_imagesmall")
    private String imageSmall;

    @Column(name = "stars_name_ukr")
    private String nameUkr;

    @Column(name = "stars_about_ukr")
    private String aboutUkr;

    @Column(name = "stars_constellation_ukr")
    private String constellationUkr;

    public Stars(){}

    public Stars(String name, double distance, double radius, String about, String image, String images, String imageMain, String imageSmall, String constellation){
        this.name = name;
        this.distance = distance;
        this.radius = radius;
        this.about = about;
        this.image = image;
        this.images = images;
        this.imageMain = imageMain;
        this.imageSmall = imageSmall;
        this.constellation = constellation;
    }

    public int compareTo(Stars star){
        return name.compareTo(star.getName());
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

    public void setDistance(double distance){
        this.distance = distance;
    }

    public double getDistance(){
        return distance;
    }

    public void setRadius(double radius){
        this.radius = radius;
    }

    public double getRadius(){
        return radius;
    }

    public void setConstellation(String constellation) {
        this.constellation = constellation;
    }

    public String getConstellation() {
        return constellation;
    }

    public void setAbout(String about){ this.about = about; }

    public String getAbout(){ return about; }

    public void setImage(String image){
        this.image = image;
    }

    public String getImage(){
        return image;
    }

    public void setImages(String images) { this.images = images; }

    public String getImages() { return images; }

    public void setImageMain(String imageMain) { this.imageMain = imageMain; }

    public String getImageMain() { return imageMain; }

    public void setImageSmall(String imageSmall) {
        this.imageSmall = imageSmall;
    }

    public String getImageSmall() {
        return imageSmall;
    }

    public void setNameUkr(String nameUkr) {
        this.nameUkr = nameUkr;
    }

    public String getNameUkr() {
        return nameUkr;
    }

    public void setAboutUkr(String aboutUkr) {
        this.aboutUkr = aboutUkr;
    }

    public String getAboutUkr() {
        return aboutUkr;
    }

    public void setConstellationUkr(String constellationUkr) {
        this.constellationUkr = constellationUkr;
    }

    public String getConstellationUkr() {
        return constellationUkr;
    }
}