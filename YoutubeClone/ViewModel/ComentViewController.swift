//
//  ComentViewController.swift
//  YoutubeClone
//
//  Created by 최지철 on 2023/05/21.
//

import UIKit
import Kingfisher

class ComentViewController: UIViewController {
    var UserInfo = userinfo.shared
    @IBOutlet weak var UserImgBtn: UIButton!
    
    func setconfigure() {
        let url = URL(string: UserInfo.userImg!)!
        let imageModifier = AnyImageModifier { image in
            let renderer = UIGraphicsImageRenderer(size: CGSize(width: 24, height: 24))
            let resizedImage = renderer.image { _ in
                
                let path = UIBezierPath(roundedRect: CGRect(x: 0, y: 0, width: 24, height: 24), cornerRadius: 15)
                    path.addClip()
                image.draw(in: CGRect(x: 0, y: 0, width: 24, height: 24))
            }
            return resizedImage
        }

        UserImgBtn.kf.setImage(with: url, for: .normal, options: [.imageModifier(imageModifier)])
    }
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
}
