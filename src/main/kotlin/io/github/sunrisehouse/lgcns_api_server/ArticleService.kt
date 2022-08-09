package io.github.sunrisehouse.lgcns_api_server

import kotlinx.coroutines.flow.toList
import org.slf4j.LoggerFactory
import org.springframework.stereotype.Service

@Service
class ArticleService(
    private val articleRepository: ArticleRepository,
) {
    suspend fun getAllArticles(): List<Article> {
        return articleRepository.findAll().toList()
    }
}
