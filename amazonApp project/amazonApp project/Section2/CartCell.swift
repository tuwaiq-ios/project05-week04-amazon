//
//  CartCell.swift
//  amazonApp project
//
//  Created by Ahmed Assiri on 17/03/1443 AH.
//


import UIKit

class CartCell: UITableViewCell {
    
    
    @IBOutlet weak var cartImage: UIImageView!
    
    
    @IBOutlet weak var nameLabie: UILabel!
    
  //  @IBOutlet weak var sumLable: UILabel!
    
    
    @IBOutlet weak var priceLable: UILabel!
    
    func setup(product: Product){
        cartImage.image = UIImage(named: product.image)
        nameLabie.text = product.name
        //sumLable.text = product.summary
        priceLable.text = product.price
        
    }
}
