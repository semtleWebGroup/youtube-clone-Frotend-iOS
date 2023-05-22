//
//  HomeShotsVideoTableViewCell.swift
//  YoutubeClone
//
//  Created by 최지철 on 2023/03/31.
//

import UIKit
import AVFoundation


class HomeShotsVideoTableViewCell: UITableViewCell {

    var videoName: [String] = ["보이즈 플레닛 ( Boys Planet ) - 난 빛나.cover","아스날 왕 산체스의 '그 크로스'","이렇게 쉽고 간단한데 징역 20년짜리 밥도둑임","카이의 옷장 속 가장 비싼 옷"]
    let videoURLs: [URL] = [
        Bundle.main.url(forResource: "1", withExtension: "mp4")!,
        Bundle.main.url(forResource: "2", withExtension: "mp4")!,
        Bundle.main.url(forResource: "3", withExtension: "mp4")!,
        Bundle.main.url(forResource: "4", withExtension: "mp4")!
    ]
    @IBOutlet weak var collectionview: UICollectionView!
    override func awakeFromNib() {
        super.awakeFromNib()
        self.collectionview.dataSource = self
        self.collectionview.delegate = self
        self.collectionview.register(UINib(nibName: "HomeShortsCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "HomeShortsCollectionViewCell")
        
        let FlowLayout = UICollectionViewFlowLayout()
        FlowLayout.scrollDirection = .horizontal

        FlowLayout.minimumInteritemSpacing = 10
        FlowLayout.minimumLineSpacing = 20
        FlowLayout.sectionInset = UIEdgeInsets(top: 0, left: 10, bottom: 0, right:10 )
        let width = collectionview.frame.width / 2.5
        let height = collectionview.frame.height / 1
        FlowLayout.itemSize = CGSize(width: width, height: height)
        self.collectionview.collectionViewLayout = FlowLayout
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }
    
}
extension HomeShotsVideoTableViewCell: UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 4
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = self.collectionview.dequeueReusableCell(withReuseIdentifier: "HomeShortsCollectionViewCell", for: indexPath) as? HomeShortsCollectionViewCell else {return UICollectionViewCell()}
        cell.configure(with: videoURLs[indexPath.row])
        cell.videoName.text = self.videoName[indexPath.row]
        if indexPath.row == 3 {
            cell.videoName.textColor = .black
            cell.viewLabel.textColor = .black
            cell.viewCountLabel.textColor = .black
        }
        return cell

    }
    
    
}
