//
//  NewsCell.swift
//  NewsFeed
//
//  Created by Nayab Butt on 05/11/2019.
//  Copyright © 2019 Nayab Butt. All rights reserved.
//

import UIKit
import SDWebImage
class NewsCell: UITableViewCell {

    var news : News? {
        didSet {
            loadData()
        }
    }
    var article : Article? {
        didSet {
            loadArticleData()
        }
    }
    @IBOutlet weak var newsImageView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var detailLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    func loadData(){
        titleLabel.text = news?.headline
        detailLabel.text = news?.detail
        newsImageView.sd_setImage(with: URL(string: news?.images?.first ?? ".com"), placeholderImage: UIImage(named: "placeholder.png"))
        
    }

    func loadArticleData(){
        titleLabel.text = article?.title
        detailLabel.text = article?.description
        newsImageView.sd_setImage(with: URL(string: article?.urlToImage ?? ".com"), placeholderImage: UIImage(named: "placeholder.png"))

    }
}
