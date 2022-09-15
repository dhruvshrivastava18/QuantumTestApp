//
//  MyCollectionViewCell.swift
//  QuantumTestApp
//
//  Created by Dhruv Shrivastava on 15/09/22.
//

import UIKit

class MyCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet var myLabel: UILabel!
    @IBOutlet var myImageView: UIImageView!
    @IBOutlet var price: UILabel!
    
    static let identifier = "MyCollectionViewCell"
    
    static func nib() -> UINib {
        return UINib(nibName: "MyCollectionViewCell", bundle: nil)
    }
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    public func configure(with model: Modal) {
        self.myLabel.text = model.text
        self.myImageView.image = UIImage(named: model.imageName)
        self.price.text = model.price
    }
}
