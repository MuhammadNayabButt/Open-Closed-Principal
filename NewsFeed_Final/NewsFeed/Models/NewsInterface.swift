//
//  NewsInterface.swift
//  NewsFeed
//
//  Created by Nayab Butt on 15/11/2019.
//  Copyright © 2019 Nayab Butt. All rights reserved.
//

import Foundation

protocol NewsCollectionInterface  {
    func getPosts() -> [NewsInterface]?
}
protocol NewsInterface {
    func getId() -> Int?
    func getHeadline() -> String?
    func getDetail() -> String?
    func getCoverImage() -> String?
    func getImages() -> [String]?
}
