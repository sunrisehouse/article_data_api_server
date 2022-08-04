package io.github.sunrisehouse.lgcns_api_server

import org.springframework.web.bind.annotation.GetMapping
import org.springframework.web.bind.annotation.RestController

import reactor.core.publisher.Flux

@RestController
class HealthController {

    @GetMapping("/health")
    fun getHealth(): Flux<String> {
        return Flux.just("Hello", "World");
    }
}

