//
//  ShopTableViewCell.swift
//  CombineExample
//
//  Created by Viktor Golovach on 15.08.2023.
//

import UIKit

class ShopTableViewCell: UITableViewCell {

    @IBOutlet weak var containerView: UIView!
    @IBOutlet weak var itemImageView: UIImageView!
    @IBOutlet weak var itemNameLabel: UILabel!
    @IBOutlet weak var itemPriceLabel: UILabel!
    @IBOutlet weak var itemDescriptionLabel: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func draw(_ rect: CGRect) {
        super.draw(rect)
        containerView.layer.cornerRadius = 16
        containerView.layer.masksToBounds = true
        itemImageView.layer.cornerRadius = 16
        itemImageView.layer.masksToBounds = true
    }
    
}
