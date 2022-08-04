package io.github.sunrisehouse.lgcns_api_server

import org.springframework.boot.autoconfigure.SpringBootApplication
import org.springframework.boot.runApplication

@SpringBootApplication
class LgcnsApiServerApplication

fun main(args: Array<String>) {
	runApplication<LgcnsApiServerApplication>(*args)
}
