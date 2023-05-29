//
//  VideoInfoTableViewCell.swift
//  YoutubeClone
//
//  Created by 최지철 on 2023/05/20.
//

import UIKit

protocol VideoInfoCellDelegate: AnyObject{
    func didTapView(in cell: VideoInfoTableViewCell)

}
class VideoInfoTableViewCell: UITableViewCell {
    
    @IBOutlet weak var likeCount: UILabel!
    @IBOutlet weak var subCount: UILabel!
    @IBOutlet weak var channelName: UILabel!
    @IBOutlet weak var videoCount: UILabel!
    @IBOutlet weak var videoName: UILabel!
    @IBOutlet weak var likeBtn: UIButton!
    @IBOutlet weak var dislikeBtn: UIButton!
    weak var delegate: VideoInfoCellDelegate?
    @IBOutlet weak var ComentView: UIView!
    @IBOutlet weak var LikeView: UIView!
    override func awakeFromNib() {
        super.awakeFromNib()
        LikeView.layer.cornerRadius = 15
        ComentView.layer.cornerRadius = 15
    }
    func setTap() {
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(tagComentView))
        self.ComentView.addGestureRecognizer(tapGesture)
    }
    @objc func tagComentView()
    {
        delegate?.didTapView(in: self)
        print("댓글클릭")
    }
    @IBAction func DislikeClick(_ sender: Any) {
        print("싫어요")
        

    }
    @IBAction func LikeClick(_ sender: Any) {
        
    }
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }
    
}
