//
//  CartCell.swift
//  Amazon
//
//  Created by sara al zhrani on 13/03/1443 AH.
//

import UIKit
class CartCell:UITableViewCell{
    
    
    
    @IBOutlet weak var cartImace: UIImageView!
    @IBOutlet weak var Cartname: UILabel!
    @IBOutlet weak var CartPrice: UILabel!


    
    
    func setup(product: Product){
        cartImace.image = product.photo
        Cartname.text = product.name
        CartPrice.text = "\(product.price) "
        
    }
    
    
   
    
    
    
}
