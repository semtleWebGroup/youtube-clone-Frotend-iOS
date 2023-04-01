//
//  HomeVideoTableViewCell.swift
//  YoutubeClone
//
//  Created by 최지철 on 2023/03/31.
//

import UIKit

class HomeVideoTableViewCell: UITableViewCell {
 
    @IBOutlet weak var UserprofileImg: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        UserprofileImg.layer.cornerRadius = CGFloat(15)
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
