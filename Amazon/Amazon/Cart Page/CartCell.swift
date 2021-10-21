//
//  CartCell.swift
//  Amazon
//
//  Created by Fawaz on 14/03/1443 AH.
//

import Foundation
import UIKit

class CartCell:UITableViewCell {
  
  @IBOutlet weak var cartImage: UIImageView!
  @IBOutlet weak var nameLabel: UILabel!
  @IBOutlet weak var summaryLabel: UILabel!
  @IBOutlet weak var priceLabel: UILabel!
  
  func setup(product: Product) {
    
    cartImage.image = UIImage(named: product.image)
    nameLabel.text = product.name
    summaryLabel.text = product.summary
    priceLabel.text = product.price
  }
}
