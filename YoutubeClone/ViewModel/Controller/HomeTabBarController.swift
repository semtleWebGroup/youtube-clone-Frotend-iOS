//
//  HomeTabBarController.swift
//  YoutubeClone
//
//  Created by 최지철 on 2023/04/11.
//

import UIKit
import PanModal
class HomeTabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    

  
}
extension HomeTabBarController: UITabBarControllerDelegate {
    func tabBarController(_ tabBarController: UITabBarController, shouldSelect viewController: UIViewController) -> Bool {
        if tabBarController.tabBarItem.title == "1" {
            print("1!!")
            let pushVC = self.storyboard?.instantiateViewController(withIdentifier: "AddViewController")
            pushVC!.modalPresentationStyle = UIModalPresentationStyle.fullScreen
            self.present(pushVC!, animated: false)
            return false

        }
     return true
    }
}
