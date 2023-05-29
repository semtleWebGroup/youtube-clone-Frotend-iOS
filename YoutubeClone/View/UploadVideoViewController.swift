//
//  UploadVideoViewController.swift
//  YoutubeClone
//
//  Created by 최지철 on 2023/05/27.
//

import UIKit
import AVFoundation

class UploadVideoViewController: UIViewController {
    var Uploadvide = UploadVideoViewModel.shared
    @IBOutlet weak var videoVIew: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var textview: UITextView!
    override func viewDidLoad() {
        super.viewDidLoad()
        setConfigure()
    }
    
   func setConfigure() {
       
       let player = AVPlayer(url: Uploadvide.videoURL!)
       let playerLayer = AVPlayerLayer(player: player)
       playerLayer.frame = videoVIew.bounds
       playerLayer.videoGravity = .resizeAspectFill  // 이미지뷰에 맞게 조정하고 싶은 경우
       videoVIew.layer.addSublayer(playerLayer)
   }


}
