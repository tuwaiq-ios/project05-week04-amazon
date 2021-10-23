//
//  cartCell.swift
//  shopAp
//
//  Created by HANAN on 14/03/1443 AH.
//

import UIKit
class cartCell: UITableViewCell{
    
    @IBOutlet weak var cartImage: UIImageView!
    
    @IBOutlet weak var nameLabel: UILabel!
    
    @IBOutlet weak var summaryLabel: UILabel!
    
    @IBOutlet weak var priceLabel: UILabel!
    
    
        func setup(product: Product){
        cartImage.image = product.image
        nameLabel.text = product.name
        //summaryLabel.text = product.summary
        priceLabel.text = "\(product.price)"
    }
    
}

