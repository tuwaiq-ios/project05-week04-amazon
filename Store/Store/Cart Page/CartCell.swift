//
//  CartCell.swift
//  Store
//
//  Created by MacBook on 15/03/1443 AH.
//

import UIKit
class CartCell: UITableViewCell {
    
    @IBOutlet weak var cartImage: UIImageView!
    @IBOutlet weak var nameLable: UILabel!
    @IBOutlet weak var summaryLable: UILabel!
    @IBOutlet weak var priceLable: UILabel!
   
    func Setup(product: Product){
        cartImage.image = UIImage(named: product.image)
        nameLable.text = product.name
        summaryLable.text = product.summary
        priceLable.text = product.price
    }
}
