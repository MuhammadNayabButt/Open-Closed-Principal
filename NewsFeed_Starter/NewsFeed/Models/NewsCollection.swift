//
//  News.swift
//  NewsFeed
//
//  Created by Nayab Butt on 04/11/2019.
//  Copyright © 2019 Nayab Butt. All rights reserved.
//

import Foundation
class News : Codable{
    var id : Int?
    var headline : String?
    var detail : String?
    var images : [String]?
}
class NewsCollection : Codable {
    var posts : [News]?
}



