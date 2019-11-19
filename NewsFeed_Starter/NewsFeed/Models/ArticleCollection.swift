//
//  ArticleCollection.swift
//  NewsFeed
//
//  Created by Nayab Butt on 08/11/2019.
//  Copyright © 2019 Nayab Butt. All rights reserved.
//

import Foundation

struct Source : Codable {
   var id : String?
    var name : String?
}
class Article : Codable {
    var source : Source?
    var author : String?
    var title : String?
    var description : String?
    var url : String?
    var urlToImage : String?
    var publishedAt : String?
    var content : String?
    
}
class ArticleCollection : Codable{
    var status : String?
    var totalResults : Int?
    var articles : [Article]?
}

