//
//  DetailController.swift
//  OCP
//
//  Created by Nayab Butt on 05/11/2019.
//  Copyright © 2019 Nayab Butt. All rights reserved.
//

import UIKit
import SDWebImage
class DetailController: UIViewController {

    var news : NewsInterface?
   
    
    @IBOutlet weak var coverImageView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var detailLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        loadData()
    }
    func loadData(){
        titleLabel.text = news?.getHeadline()
        detailLabel.text = news?.getDetail()
        coverImageView.sd_setImage(with: URL(string: news?.getCoverImage() ?? ".com"), placeholderImage: UIImage(named: "placeholder.png"))
    }
    
}
