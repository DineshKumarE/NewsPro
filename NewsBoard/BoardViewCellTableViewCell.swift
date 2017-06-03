//
//  BoardViewCellTableViewCell.swift
//  NewsBoard
//
//  Created by DineshKumar on 03/06/17.
//  Copyright © 2017 DineshKumar. All rights reserved.
//

import UIKit

class BoardViewCellTableViewCell: UITableViewCell {

    @IBOutlet weak var brandLogo: UIImageView!
    
    @IBOutlet weak var brandName: UILabel!
    
    @IBOutlet weak var updateTime: UILabel!
    
    @IBOutlet weak var newsHeadlineText: UITextView!
    
    @IBOutlet weak var newsImage: UIImageView!
    
    @IBOutlet weak var newsContentText: UITextView!
    
    
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
