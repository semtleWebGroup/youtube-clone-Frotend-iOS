//
//  VideoViewController.swift
//  YoutubeClone
//
//  Created by 최지철 on 2023/05/20.
//
    
import UIKit

class VideoViewController: UIViewController {
    @IBOutlet weak var tableview: UITableView!
    
    @IBOutlet weak var ViedoView: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        setConfigure()
    }
    func setConfigure(){
        tableview.dataSource = self
        tableview.delegate = self
        tableview.register(UINib(nibName: "VideoInfoTableViewCell", bundle: nil), forCellReuseIdentifier: "VideoInfoTableViewCell")
        tableview.register(UINib(nibName: "HomeVideoTableViewCell", bundle: nil), forCellReuseIdentifier: "HomeVideoTableViewCell")
    }
}
extension VideoViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.row == 0 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "VideoInfoTableViewCell", for: indexPath) as! VideoInfoTableViewCell
            cell.delegate = self
            cell.selectionStyle = .none
            return cell
        }
        else {
            let cell = tableView.dequeueReusableCell(withIdentifier: "HomeVideoTableViewCell", for: indexPath) as! HomeVideoTableViewCell
            cell.selectionStyle = .none
            return cell
        }
        
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 290
    }
}
extension VideoViewController: VideoInfoCellDelegate {
    func didTapView(in cell: VideoInfoTableViewCell) {
        print("클릭댓글")
    }
}
