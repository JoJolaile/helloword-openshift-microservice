package com.reply.xchange18.openshift.demo.web;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class GreetingsController {

    @GetMapping("/hello")
    public String helloWorld() {
        return "Hello, World";
    }
}
