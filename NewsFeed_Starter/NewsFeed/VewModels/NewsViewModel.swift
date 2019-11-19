//
//  NewsViewModel.swift
//  NewsFeed
//
//  Created by Nayab Butt on 05/11/2019.
//  Copyright © 2019 Nayab Butt. All rights reserved.
//

import Foundation

class NewsViewModel {
    private var news : News?
    
    init(news : News) {
        self.news = news
    }
    
    private var title : String {
        news?.headline ?? ""
    }
    private var detail : String {
        news?.detail ?? ""
    }
    private var imagePath : String {
        news?.images?.first ?? ""
    }
    
    
}
