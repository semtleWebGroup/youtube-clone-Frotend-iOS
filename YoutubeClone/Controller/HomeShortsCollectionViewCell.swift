//
//  HomeShortsCollectionViewCell.swift
//  YoutubeClone
//
//  Created by 최지철 on 2023/03/31.
//

import UIKit

class HomeShortsCollectionViewCell: UICollectionViewCell {
    @IBOutlet weak var videoView: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        videoView.layer.cornerRadius = videoView.frame.width/8
        videoView.clipsToBounds = true
        
    }

}
