package io.github.sunrisehouse.lgcns_api_server

import org.slf4j.LoggerFactory
import org.springframework.web.bind.annotation.GetMapping
import org.springframework.web.bind.annotation.RestController

import reactor.core.publisher.Flux

@RestController
class HealthController {
    private val log = LoggerFactory.getLogger(this.javaClass)
    @GetMapping("/health")
    fun getHealth(): Flux<String> {
        log.debug("GET /health")
        return Flux.just("Hello World");
    }
}

