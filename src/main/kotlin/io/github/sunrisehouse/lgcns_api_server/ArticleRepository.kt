package io.github.sunrisehouse.lgcns_api_server

import org.springframework.data.repository.kotlin.CoroutineCrudRepository



interface ArticleRepository : CoroutineCrudRepository<Article, Long> {

}