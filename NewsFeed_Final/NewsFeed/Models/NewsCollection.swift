//
//  NewsCollection.swift
//  NewsFeed
//
//  Created by Nayab Butt on 15/11/2019.
//  Copyright © 2019 Nayab Butt. All rights reserved.
//

import Foundation

class News : Codable, NewsInterface{
    func getId() -> Int? {
        return id
    }
    func getHeadline() -> String? {
        return headline

    }
    func getDetail() -> String? {
        return detail
    }
    func getCoverImage() -> String? {
        return (images?.count ?? 0 > 0 ? images?.first ?? nil : nil)
    }
    func getImages() -> [String]? {
        return images
    }
    
    var id : Int?
    var headline : String?
    var detail : String?
    var images : [String]?
}
class NewsCollection : Codable, NewsCollectionInterface {
    var posts : [News]?
    func getPosts() -> [NewsInterface]? {
        return posts
    }
}
