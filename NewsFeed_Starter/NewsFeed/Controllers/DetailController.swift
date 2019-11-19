//
//  DetailController.swift
//  NewsFeed
//
//  Created by Nayab Butt on 05/11/2019.
//  Copyright © 2019 Nayab Butt. All rights reserved.
//

import UIKit

class DetailController: UIViewController {

    var news : News?
    var article : Article?
    
    @IBOutlet weak var coverImageView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var detailLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //loadData()
        loadArticleData()
    }
    func loadData(){
        titleLabel.text = news?.headline
        detailLabel.text = news?.detail
        coverImageView.sd_setImage(with: URL(string: news?.images?.first ?? ".com"), placeholderImage: UIImage(named: "placeholder.png"))
    }
    func loadArticleData(){
        titleLabel.text = article?.title
        detailLabel.text = article?.description
        coverImageView.sd_setImage(with: URL(string: article?.urlToImage ?? ".com"), placeholderImage: UIImage(named: "placeholder.png"))
    }
}
