package com.example.demoapp;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class HelloController {

    @GetMapping("/")
    public String home() {
        return "Hello bro! Spring Boot app is running on EC2 successfully!";
    }

    @GetMapping("/hello")
    public String hello() {
        return "Hi! This is my first deployed Spring Boot app.";
    }

}
