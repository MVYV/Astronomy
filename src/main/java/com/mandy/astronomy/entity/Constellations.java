package com.mandy.astronomy.entity;

import javax.persistence.*;

@Entity
public class Constellations {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "constellations_id")
    private long id;

    @Column(name = "constellations_name")
    private String name;

    @Column(name = "constellations_about")
    private String about;

    @Column(name = "constellations_area")
    private String area;

    @Column(name = "constellations_brightest_star")
    private String brightestStar;

    @Column(name = "constellations_nearest_star")
    private String nearestStar;

    @Column(name = "constellations_main_star")
    private String mainStar;

    @Column(name = "constellations_quadrant")
    private String quadrant;

    @Column(name = "constellations_family")
    private String family;

    @Column(name = "constellations_image")
    private String image;

    public Constellations(){}

    public Constellations(long id, String name, String about, String area, String brightestStar, String nearestStar, String mainStar, String quadrant, String family, String image){
        this.id = id;
        this.name = name;
        this.about = about;
        this.area = area;
        this.brightestStar = brightestStar;
        this.nearestStar = nearestStar;
        this.mainStar = mainStar;
        this.quadrant = quadrant;
        this.family = family;
        this.image = image;
    }

    public void setId(long id) {
        this.id = id;
    }

    public long getId() {
        return id;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getName() {
        return name;
    }

    public void setAbout(String about) {
        this.about = about;
    }

    public String getAbout() {
        return about;
    }

    public void setArea(String area) {
        this.area = area;
    }

    public String getArea() {
        return area;
    }

    public void setBrightestStar(String brightestStar) {
        this.brightestStar = brightestStar;
    }

    public String getBrightestStar() {
        return brightestStar;
    }

    public void setNearestStar(String nearestStar) {
        this.nearestStar = nearestStar;
    }

    public String getNearestStar() {
        return nearestStar;
    }

    public void setMainStar(String mainStar) {
        this.mainStar = mainStar;
    }

    public String getMainStar() {
        return mainStar;
    }

    public void setQuadrant(String quadrant) {
        this.quadrant = quadrant;
    }

    public String getQuadrant() {
        return quadrant;
    }

    public void setFamily(String family) {
        this.family = family;
    }

    public String getFamily() {
        return family;
    }

    public void setImage(String image) {
        this.image = image;
    }

    public String getImage() {
        return image;
    }
}
