//
//  productCell.swift
//  shopAp
//
//  Created by HANAN on 14/03/1443 AH.
//

import UIKit

class productCell: UICollectionViewCell {
    var cellProduct: Product!
    
    @IBOutlet weak var productImage: UIImageView!
    @IBOutlet weak var productName: UILabel!
    
    @IBOutlet weak var productPrice: UILabel!
    
    func setup(product: Product){
        productImage.image =  product.image
        productName.text = product.name
        productPrice.text = "\(product.price)"
        cellProduct = product
        
    }
    
    @IBAction func addToCartPressed(_ sender: Any) {
        cart.append(cellProduct!)
    }
}
