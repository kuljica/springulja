package com.example.springulja.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class TestniController {

    @GetMapping("/bok")
    public String testRest() {
        return "bok";
    }

}
