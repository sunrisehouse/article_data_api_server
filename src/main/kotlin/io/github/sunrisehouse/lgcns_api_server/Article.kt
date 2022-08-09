package io.github.sunrisehouse.lgcns_api_server

import org.springframework.data.annotation.Id
import org.springframework.data.relational.core.mapping.Table

@Table
data class Article(
    @Id
    val id: Long,
    val title: String? = null,
    val contents: String? = null,
    val writer: String? = null,
    val date_time: String? = null,
    val modify_time: String? = null,
)
