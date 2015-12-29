package com.mandy.astronomy.entity;

import javax.persistence.*;

@Entity(name = "constellations")
public class Constellations implements Comparable<Constellations>{

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

    @Column(name = "constellations_main_stars")
    private String mainStar;

    @Column(name = "constellations_quadrant")
    private String quadrant;

    @Column(name = "constellations_family")
    private String family;

    @Column(name = "constellations_image")
    private String image;

    @Column(name = "constellations_images")
    private String images;

    @Column(name = "constellations_main_image")
    private String mainImage;

    @Column(name = "constellations_name_ukr")
    private String nameUkr;

    @Column(name = "constellations_about_ukr")
    private String aboutUkr;

    @Column(name = "constellations_brightest_star_ukr")
    private String brightestStarUkr;

    @Column(name = "constellations_nearest_star_ukr")
    private String nearestStarUkr;

    @Column(name = "constellations_family_ukr")
    private String familyUkr;

    @Column(name = "constellations_area_ukr")
    private String areaUkr;

    public Constellations(){}

    public Constellations(long id, String name, String about, String area, String brightestStar, String nearestStar, String mainStar, String quadrant, String family, String image, String images, String mainImage){
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
        this.images = images;
        this.mainImage = mainImage;
    }

    public int compareTo(Constellations constellation){
        return name.compareTo(constellation.getName());
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

    public void setImages(String images) {
        this.images = images;
    }

    public String getImages() {
        return images;
    }

    public void setMainImage(String mainImage) {
        this.mainImage = mainImage;
    }

    public String getMainImage() {
        return mainImage;
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

    public void setBrightestStarUkr(String brightestStarUkr) {
        this.brightestStarUkr = brightestStarUkr;
    }

    public String getBrightestStarUkr() {
        return brightestStarUkr;
    }

    public void setNearestStarUkr(String nearestStarUkr) {
        this.nearestStarUkr = nearestStarUkr;
    }

    public String getNearestStarUkr() {
        return nearestStarUkr;
    }

    public void setFamilyUkr(String familyUkr) {
        this.familyUkr = familyUkr;
    }

    public String getFamilyUkr() {
        return familyUkr;
    }

    public void setAreaUkr(String areaUkr) {
        this.areaUkr = areaUkr;
    }

    public String getAreaUkr() {
        return areaUkr;
    }
}
