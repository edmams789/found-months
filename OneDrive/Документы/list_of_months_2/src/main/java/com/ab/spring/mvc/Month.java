package com.ab.spring.mvc;

public class Month {    
    private int number;
    private String name;

    public Month() {
    }

    public Month(int number, String name) {
        this.number = number;
        this.name = name;
    }   

    public int getNumber() {
        return number;
    }

    public String getName() {
        return name;
    }

    @Override
    public String toString() {
        return "number = " + number + ", name = " + name;
    }
    
    
}
