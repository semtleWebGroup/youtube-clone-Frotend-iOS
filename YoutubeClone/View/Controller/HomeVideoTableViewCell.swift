//
//  HomeVideoTableViewCell.swift
//  YoutubeClone
//
//  Created by 최지철 on 2023/03/31.
//

import UIKit

class HomeVideoTableViewCell: UITableViewCell {
 
    @IBOutlet weak var videoImg: UIImageView!
    @IBOutlet weak var viewCount: UILabel!
    @IBOutlet weak var channelName: UILabel!
    @IBOutlet weak var videoName: UILabel!
    @IBOutlet weak var UserprofileImg: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        UserprofileImg.layer.cornerRadius = CGFloat(15)
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }
    
}
