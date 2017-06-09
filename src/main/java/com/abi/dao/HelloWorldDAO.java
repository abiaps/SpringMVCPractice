package com.abi.dao;


import com.abi.Hello;

public class HelloWorldDAO {

    /*
      Create a new object based on an input
     */
    public Hello getHelloObject(String name, String input) {
        Hello hello = new Hello();
        hello.setName(input+ " " +name + " World");
        return hello;
    }

}
