//
//  AddViewController.swift
//  YoutubeClone
//
//  Created by 최지철 on 2023/05/02.
//

import UIKit
import PanModal

class AddViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()



    }
    
}
extension AddViewController: PanModalPresentable {
    var panScrollable: UIScrollView? {
        return nil
    }

    var shortFormHeight: PanModalHeight {
        return .contentHeight(320)
    }

    var longFormHeight: PanModalHeight {
        return .maxHeightWithTopInset(0)
    }
}

