//
//  CartCell.swift
//  Aziz.Amazon
//
//  Created by Abdulaziz on 15/03/1443 AH.
//

import UIKit

class CartCell: UITableViewCell{
    
    @IBOutlet weak var cartImage: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var summaryLabel: UILabel!
    @IBOutlet weak var pricelabel: UILabel!
    
    func setup(product: Product) {
        
        cartImage.image = product.image
        nameLabel.text = product.name

        pricelabel.text = product.price
    }
    
}
