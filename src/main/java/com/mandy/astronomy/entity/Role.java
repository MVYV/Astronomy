package com.mandy.astronomy.entity;

import javax.persistence.*;

@Entity(name = "user_role")
public class Role {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "r_id")
    private long id;

    @Column(name = "r_user_name")
    private String name;

    @Column(name = "r_roles")
    private String role;

    public void setId(long id){
        this.id = id;
    }

    public long getId(){
        return id;
    }

    public void setRole(String role){
        this.role = role;
    }

    public String getRole(){
        return role;
    }

    public void setName(String name){
        this.name = name;
    }

    public String getName(){
        return name;
    }
}
