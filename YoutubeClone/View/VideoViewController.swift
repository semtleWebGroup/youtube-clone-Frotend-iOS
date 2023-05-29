//
//  VideoViewController.swift
//  YoutubeClone
//
//  Created by 최지철 on 2023/05/20.
//
    
import UIKit
import AVFoundation
import AVKit
import Alamofire

class VideoViewController: UIViewController {
    @IBOutlet weak var tableview: UITableView!
    public var videoId:UUID?
    @IBOutlet weak var ViedoView: UIImageView!
    var videoviewModel = VideoViewModel()
    var videoInfo:VideoResponse?
    var player: AVPlayer?

    override func viewDidLoad() {
        super.viewDidLoad()
        setConfigure()

        if let url = URL(string: "https://demo.unified-streaming.com/k8s/features/stable/video/tears-of-steel/tears-of-steel.mp4/.m3u8") {
            playM3U8Video(url: url, in: ViedoView)
        }

    }
    func playM3U8Video(url: URL, in imageView: UIImageView) {
        let player = AVPlayer(url: url)
        let playerLayer = AVPlayerLayer(player: player)
        playerLayer.frame = imageView.bounds
        playerLayer.videoGravity = .resizeAspectFill
        imageView.layer.addSublayer(playerLayer)
        player.play()
    }

    func setVideoPlay() {
        let videoURL = URL(string: "https://demo.unified-streaming.com/k8s/features/stable/video/tears-of-steel/tears-of-steel.mp4/.m3u8")!
                
                let playerItem = AVPlayerItem(url: videoURL)
                player = AVPlayer(playerItem: playerItem)
                let playerLayer = AVPlayerLayer(player: player)
                playerLayer.frame = ViedoView.bounds
                playerLayer.videoGravity = .resizeAspectFill
                ViedoView.layer.addSublayer(playerLayer)
                player?.play()

    }
    func setConfigure(){
        tableview.dataSource = self
        tableview.delegate = self
        tableview.register(UINib(nibName: "VideoInfoTableViewCell", bundle: nil), forCellReuseIdentifier: "VideoInfoTableViewCell")
        tableview.register(UINib(nibName: "HomeVideoTableViewCell", bundle: nil), forCellReuseIdentifier: "HomeVideoTableViewCell")
        print("여기!!")
        let id = videoId?.uuidString.lowercased()
        let realid = UUID(uuidString:id!)
        print(realid as Any)
        videoviewModel.getHomeVideoList(videoId: UUID(uuidString:id!)!) { VideoResponse in
            self.videoInfo = VideoResponse!
            self.tableview.reloadData()
        }
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
            cell.likeCount.text = String(videoInfo?.likeCount ?? 0)
            cell.videoName.text = videoInfo?.title ?? "loading..."
            cell.channelName.text = videoInfo?.channelName ?? "loading..."
            cell.subCount.text = String(videoInfo?.channelSubscriberCount ?? 0) + "명"
            cell.videoCount.text = String(videoInfo?.viewCount ?? 0) + "회"
            
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
