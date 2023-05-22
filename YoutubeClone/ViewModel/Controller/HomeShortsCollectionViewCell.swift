//
//  HomeShortsCollectionViewCell.swift
//  YoutubeClone
//
//  Created by 최지철 on 2023/03/31.
//

import UIKit
import AVFoundation

class HomeShortsCollectionViewCell: UICollectionViewCell {
    @IBOutlet weak var videoView: UIImageView!
    var player: AVPlayer?
    var playerLayer: AVPlayerLayer?
    @IBOutlet weak var videoName: UILabel!
    @IBOutlet weak var viewCountLabel: UILabel!
    @IBOutlet weak var viewLabel: UILabel!
    
    override func layoutSubviews() {
        super.layoutSubviews()
        playerLayer?.frame = contentView.bounds
    }
    
    func configure(with videoURL: URL) {
        player = AVPlayer(url: videoURL)
        playerLayer?.player = player
        playerLayer?.videoGravity = .resizeAspectFill
        player?.play()
    }
    
    override func prepareForReuse() {
        super.prepareForReuse()
        playerLayer?.player = nil
        player = nil
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        videoView.layer.cornerRadius = videoView.frame.width/8
        videoView.clipsToBounds = true
        playerLayer = AVPlayerLayer(player: nil)
        videoView.layer.addSublayer(playerLayer!)
        
    }

}
