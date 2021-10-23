//
//  ProductsCell.swift
//  PerfumesApplication
//
//  Created by Kholod Sultan on 16/03/1443 AH.
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
        
        if product.quantity == "0" {
            prodcutStocks.textColor = .red
            prodcutStocks.text = "Out of stocks"
        }else{
            prodcutStocks.textColor = .green
            prodcutStocks.text = "In stocks"
        }
    }
    
    @IBAction func AddToCartPressed(_ sender: Any) {
        
        cart.append(cellproduct)
        print(cart.count)
        
    }
    
    
}
