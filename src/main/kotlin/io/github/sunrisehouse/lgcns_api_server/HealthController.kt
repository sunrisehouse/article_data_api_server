package io.github.sunrisehouse.lgcns_api_server

import org.slf4j.LoggerFactory
import org.springframework.web.bind.annotation.GetMapping
import org.springframework.web.bind.annotation.RequestMapping
import org.springframework.web.bind.annotation.RestController

import reactor.core.publisher.Flux

@RestController
@RequestMapping("/health")
class HealthController {
    private val log = LoggerFactory.getLogger(this.javaClass)
    @GetMapping
    fun getHealth(): Flux<String> {
        return Flux.just("Hello World");
    }
}

