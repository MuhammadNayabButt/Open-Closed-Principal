//
//  NewsCollection.swift
//  NewsFeed
//
//  Created by Nayab Butt on 06/11/2019.
//  Copyright © 2019 Nayab Butt. All rights reserved.
//

import Foundation

struct Source : Codable {
   var id : String?
    var name : String?
}
class Article : Codable , NewsInterface {
    
    var source : Source?
    var author : String?
    var title : String?
    var description : String?
    var url : String?
    var urlToImage : String?
    var publishedAt : String?
    var content : String?
    
    func getId() -> Int? {
        return Int(source?.id ?? "0")
    }
    
    func getHeadline() -> String? {
        return title
    }
    
    func getDetail() -> String? {
        return description
    }
    
    func getCoverImage() -> String? {
        return urlToImage
    }
    
    func getImages() -> [String]? {
        return [urlToImage ?? ""]
    }
    
}
class ArticleCollection : Codable ,  NewsCollectionInterface {
    
    var status : String?
    var totalResults : Int?
    var articles : [Article]?
    
    func getPosts() -> [NewsInterface]? {
        return articles
    }
}

