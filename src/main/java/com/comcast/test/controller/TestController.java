package com.comcast.test.controller;


import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import reactor.core.publisher.Mono;

@RestController
@RequestMapping("")
public class TestController {

    @GetMapping("/hello")
    protected Mono<String> hello() {
        return Mono.just("The Application is up and running..:)");
    }
}
