//
//  TableViewCell.swift
//  Weather
//
//  Created by Еркебулан on 19.02.2021.
//

import UIKit

class TableViewCell: UITableViewCell {

    @IBOutlet weak var dayName: UILabel!
    @IBOutlet weak var imageIcon: UIImageView!
    @IBOutlet weak var nightTemp: UILabel!
    @IBOutlet weak var dayTemp: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
