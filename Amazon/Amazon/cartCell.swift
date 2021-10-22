//
//  cartCell.swift
//  Amazon
//
//  Created by alanood on 15/03/1443 AH.
//

import UIKit
class CartCell: UITableViewCell{
    
   
    @IBOutlet weak var cartImage: UIImageView!
    
    @IBOutlet weak var nameLable: UILabel!
    
    @IBOutlet weak var priceLable: UILabel!
    
    func setup(product: Product) {
        cartImage.image = UIImage(named: product.image)
        nameLable.text = product.name
        priceLable.text = product.price
       
    }
    
}
