//
//  VideoInfoTableViewCell.swift
//  YoutubeClone
//
//  Created by 최지철 on 2023/05/20.
//

import UIKit

class VideoInfoTableViewCell: UITableViewCell {

    @IBOutlet weak var LikeView: UIView!
    @IBOutlet weak var ComentView: UIView!
    override func awakeFromNib() {
        super.awakeFromNib()
        LikeView.layer.cornerRadius = 15
        ComentView.layer.cornerRadius = 15
    }

    @IBAction func DislikeClick(_ sender: Any) {
        
    }
    @IBAction func LikeClick(_ sender: Any) {
        
    }
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
