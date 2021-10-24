//
//  ProductsCell.swift
//  Macstore
//
//  Created by Me .. on 17/03/1443 AH.
//

import UIKit

class ProductsCell: UICollectionViewCell{
    
    var cellproduct: Product!
    
    @IBOutlet weak var prodcutStocks: UILabel!
    @IBOutlet weak var ProductImage: UIImageView!
    @IBOutlet weak var ProductName: UILabel!
    @IBOutlet weak var ProductPrice: UILabel!
    
    
    func setup(product: Product){
        
        ProductImage.image = product.image
        ProductName.text = product.name
        ProductPrice.text = product.price
        cellproduct = product
        
         
    }
    
    @IBAction func AddToCartPressed(_ sender: Any) {
        
        cart.append(cellproduct)
        print(cart.count)
        
    }
    
    
}

