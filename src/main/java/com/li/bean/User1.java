package com.li.bean;

import java.util.Date;

public class User1 {
    private int id;
    private String name;
    private String sex;
    private int age;
    private String numb;
    private String brithday;

    public User1(){

    }

    public User1(int id, String name, String sex, int age, String numb, String brithday) {
        this.id = id;
        this.name = name;
        this.sex = sex;
        this.age = age;
        this.numb = numb;
        this.brithday = brithday;
    }

    @Override
    public String toString() {
        return "id="+id+", name="+name+", sex="+sex+", age="+age+", numb="+numb+", brithday="+brithday;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getSex() {
        return sex;
    }

    public void setSex(String sex) {
        this.sex = sex;
    }

    public int getAge() {
        return age;
    }

    public void setAge(int age) {
        this.age = age;
    }

    public String getNumb() {
        return numb;
    }

    public void setNumb(String numb) {
        this.numb = numb;
    }

    public String getBrithday() {
        return brithday;
    }

    public void setBrithday(String brithday) {
        this.brithday = brithday;
    }
}
