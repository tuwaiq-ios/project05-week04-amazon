//
//  productsCell.swift
//  Store
//
//  Created by MacBook on 15/03/1443 AH.
//

import UIKit

class productsCell : UICollectionViewCell {
    
    var cellproduct: Product!
    
    @IBOutlet weak var productImage: UIImageView!
    
    @IBOutlet weak var productName: UILabel!
    
    @IBOutlet weak var productPrice: UILabel!
    
    func setup(product: Product){
        productImage.image = UIImage(named: product.image)
        productName.text = product.name
        productPrice.text = product.price
        cellproduct = product
    }
    
    @IBOutlet weak var addToCartPressed: UIButton!
    
    @IBAction func addToCartPressed(_ sender: Any) {
        cart.append(cellproduct)
      
    }
    
    @IBAction func checkoutPressed(_ sender: Any) {
    }
    
}
