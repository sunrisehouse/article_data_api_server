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
        println("hihi1")
        log.trace("trace message")
        log.debug("debug message")
        log.info("info  message")
        log.warn("warn  message")
        log.error("error message")
        println("hihi2")
        return Flux.just("Hello", "World");
    }
}

