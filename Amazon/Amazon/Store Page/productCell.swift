//
//  productCell.swift
//  Amazon
//
//  Created by Fawaz on 14/03/1443 AH.
//

import Foundation
import UIKit

class ProductCell: UICollectionViewCell {
  
  @IBOutlet weak var productImage: UIImageView!
  @IBOutlet weak var productName: UILabel!
  @IBOutlet weak var productPrice: UILabel!
  
  var cellProduct: Product!
  
  func setup(product: Product) {
    productImage.image = UIImage(named: product.image)
    productName.text = product.name
    productPrice.text = product.price
    
    cellProduct = product
  }
  
  @IBAction func addToCartPressed(_ sender: Any) {
    
    cart.append(cellProduct)
    
  }
}
