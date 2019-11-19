//
//  NewsCell.swift
//  OCP
//
//  Created by Nayab Butt on 05/11/2019.
//  Copyright © 2019 Nayab Butt. All rights reserved.
//

import UIKit
import SDWebImage
class NewsCell: UITableViewCell {

    var news : NewsInterface? {
        didSet {
            loadData()
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
        titleLabel.text = news?.getHeadline()
        detailLabel.text = news?.getDetail()
        newsImageView.sd_setImage(with: URL(string: news?.getCoverImage() ?? ".com"), placeholderImage: UIImage(named: "placeholder.png"))
        
    }
}
