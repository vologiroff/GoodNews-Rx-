//
//  Article.swift
//  GoodNews
//
//  Created by Kantemir Vologirov on 9/22/20.
//

import Foundation

struct ArticleList: Decodable {
    let articles: [Article]
}

extension ArticleList {
    static var all: Resource<ArticleList> = {
        let url = URL(string: "http://newsapi.org/v2/top-headlines?sources=techcrunch&apiKey=320c80b22be441248cc62094ee7a100c")!
        
        return Resource(url: url)
    }()
}

struct Article: Decodable {
    let title: String
    let description: String?
}
