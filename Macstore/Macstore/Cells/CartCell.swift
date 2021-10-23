//
//  CartCell.swift
//  Macstore
//
//  Created by Me .. on 17/03/1443 AH.
//

import UIKit

class CartCell: UITableViewCell{
    
    @IBOutlet weak var ImageCart: UIImageView!
    @IBOutlet weak var NameImageCart: UILabel!
    @IBOutlet weak var SummaryCart: UILabel!
    @IBOutlet weak var PriceCart: UILabel!
    
    func setup(prouduct: Product){
        
        ImageCart.image = prouduct.image
        NameImageCart.text = prouduct.name
        SummaryCart.text = prouduct.description
        PriceCart.text = prouduct.price + " SAR"
        
    }
}

