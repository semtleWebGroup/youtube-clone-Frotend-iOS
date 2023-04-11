//
//  HomeShotsVideoTableViewCell.swift
//  YoutubeClone
//
//  Created by 최지철 on 2023/03/31.
//

import UIKit

class HomeShotsVideoTableViewCell: UITableViewCell {

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
        
        return cell

    }
    
    
}
