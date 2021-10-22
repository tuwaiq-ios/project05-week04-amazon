//
//  ProductVC.swift
//  Amazon
//
//  Created by Fawaz on 14/03/1443 AH.
//

import Foundation
import UIKit

class ProductVC: UIViewController {
  
  var selectedProduct: Product?
  
  @IBOutlet weak var productImage: UIImageView!
  @IBOutlet weak var productName: UILabel!
  @IBOutlet weak var productPrice: UILabel!
  @IBOutlet weak var productSummary: UILabel!
  
  @IBAction func addToCartPressed(_ sender: Any) {
    
    cart.append(selectedProduct!)
  }
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    if selectedProduct != nil {
      productImage.image = selectedProduct?.image
      productName.text = selectedProduct?.name
      productPrice.text = selectedProduct?.price
      productSummary.text = selectedProduct?.summary
    }
  }
}
