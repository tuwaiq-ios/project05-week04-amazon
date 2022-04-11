//
//  cardCell.swift
//  H-Amazon
//
//  Created by  HANAN ASIRI on 13/03/1443 AH.
//

import UIKit

class cardCell: UITableViewCell {
    
    @IBOutlet var cardPrice: UILabel!
    @IBOutlet var cardName: UILabel!
    @IBOutlet var cardImage: UIImageView!
    
    
  func setup( product : product) {
      cardImage.image = product.photo
      cardName.text = product.name
      cardPrice.text = "\(product.price)"

        
    }
    }

