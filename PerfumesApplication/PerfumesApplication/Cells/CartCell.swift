//
//  CartCell.swift
//  PerfumesApplication
//
//  Created by Kholod Sultan on 16/03/1443 AH.
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
        SummaryCart.text = prouduct.summary
        PriceCart.text = prouduct.price + " SAR"
        
    }
}
