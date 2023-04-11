//
//  HomeViewController.swift
//  YoutubeClone
//
//  Created by 최지철 on 2023/04/01.
//

import UIKit
import Kingfisher

class HomeViewController: UIViewController, UIScrollViewDelegate {
    var UserInfo = userinfo.shared

    @IBOutlet weak var UserImgBtn: UIButton!
    @IBOutlet weak var naviBar: UINavigationBar!
    @IBOutlet weak var HeaderView: UIView!
    @IBOutlet weak var SecondHeaderView: UIScrollView!
    @IBOutlet weak var tableView: UITableView! {
        
        didSet {
            tableView.contentInset = UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0)
            }
    }
    
    let maxHeight: CGFloat = 44//headerView의 최대 높이값
    let minHeight: CGFloat = 44 //headerVIew의 최소 높이값
    let SecondmaxHeight: CGFloat = 49//headerView의 최대 높이값
    let SecondminHeight: CGFloat = 49 //headerVIew의 최소 높이값
    
    @IBOutlet weak var heightConstraint: NSLayoutConstraint! {
        didSet {
            heightConstraint.constant = maxHeight
        }
        
    }
    @IBOutlet weak var SecondheightConstraint: NSLayoutConstraint! {
        didSet {
            SecondheightConstraint.constant = SecondmaxHeight
        }
        
    }
    func setConfigure(){
        naviBar.shadowImage = UIImage()
        tableView.dataSource = self
        tableView.delegate = self
        tableView.register(UINib(nibName: "HomeShotsVideoTableViewCell", bundle: nil), forCellReuseIdentifier: "HomeShotsVideoTableViewCell")
        tableView.register(UINib(nibName: "HomeVideoTableViewCell", bundle: nil), forCellReuseIdentifier: "HomeVideoTableViewCell")

    }
    
    
    
    
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        if scrollView.contentOffset.y <= 10 {
            heightConstraint.constant = max(abs(scrollView.contentOffset.y), minHeight)
            HeaderView.alpha = 1
            SecondHeaderView.alpha = 1
            
            if (scrollView.contentOffset.y / 100) <= 0.5 {
                print("얍!")

                SecondHeaderView.isHidden = false
                HeaderView.isHidden = false
            }

        } else {
            heightConstraint.constant = minHeight

            print((scrollView.contentOffset.y / 100),"!")
            //SecondHeaderView.isHidden = true
            HeaderView.alpha = 1 - (scrollView.contentOffset.y / 100)
            //HeaderView.isHidden = true
            SecondHeaderView.alpha = 1 - (scrollView.contentOffset.y / 100)
            print((scrollView.contentOffset.y / 100),"!")
            
            if (scrollView.contentOffset.y / 100) >= 1 {
                print("얍!")

                SecondHeaderView.isHidden = true
                HeaderView.isHidden = true
            }

        }
        print(scrollView.contentOffset.y)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setConfigure()
    }
    override func viewWillAppear(_ animated: Bool) {

    }
    
}
extension HomeViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
 
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.row == 0 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "HomeShotsVideoTableViewCell", for: indexPath) as! HomeShotsVideoTableViewCell
            // 첫 번째 커스텀 셀을 생성하고 반환합니다.
            return cell
        }
        else {
            let cell = tableView.dequeueReusableCell(withIdentifier: "HomeVideoTableViewCell", for: indexPath) as! HomeVideoTableViewCell
            // 첫 번째 커스텀 셀을 생성하고 반환합니다.
            return cell
        }
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 290
    }
}
