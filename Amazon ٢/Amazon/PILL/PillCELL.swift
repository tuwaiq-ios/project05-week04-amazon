//
//  PillCELL.swift
//  Amazon
//
//  Created by sara al zhrani on 15/03/1443 AH.
//

import UIKit

class PillCELL: UITableViewCell{
    
    @IBOutlet weak var imagPill: UIImageView!
    
    
    @IBOutlet weak var namePill: UILabel!
    
    
    @IBOutlet weak var pricePill: UILabel!
   
    
    func setup(product:  product)
    {
      imagPill.image = product.photo
      namePill.text = product.name
      pricePill.text = "\(product.price) "

    }
    
    
}
