package io.github.sunrisehouse.lgcns_api_server

import org.springframework.web.bind.annotation.CrossOrigin
import org.springframework.web.bind.annotation.GetMapping
import org.springframework.web.bind.annotation.RequestMapping
import org.springframework.web.bind.annotation.RestController

@RestController
@RequestMapping("/articles")
@CrossOrigin
class ArticleController(
    private val articleService: ArticleService,
) {
    @GetMapping
    suspend fun getHealth(): List<Article> {
        return articleService.getAllArticles()
    }
}
