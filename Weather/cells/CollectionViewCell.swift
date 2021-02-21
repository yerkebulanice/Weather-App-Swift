//
//  CollectionViewCell.swift
//  Weather
//
//  Created by Еркебулан on 19.02.2021.
//

import UIKit

class CollectionViewCell: UICollectionViewCell {
    @IBOutlet weak var timeLabel: UILabel!
    @IBOutlet weak var iconImage: UIImageView!
    @IBOutlet weak var tempHourly: UILabel!
    
    @IBOutlet weak var collectionView: UIView!
    static let identifier = String(describing: CollectionViewCell.self)
    static let nib = UINib(nibName: identifier, bundle: nil)
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    func add(timeLabel: String, tempHourly: String, icon: String){
        self.timeLabel.text = timeLabel
        self.tempHourly.text = tempHourly
        self.iconImage.image = UIImage(systemName: icon)
    }

}
