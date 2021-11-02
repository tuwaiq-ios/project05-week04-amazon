//
//  ProductCell.swift
//  amazonApp project
//
//  Created by Ahmed Assiri on 17/03/1443 AH.
//




import UIKit

class ProductCell: UICollectionViewCell{
    
    var CellProduct: Product!
    
    @IBOutlet weak var ProductImage: UIImageView!
    @IBOutlet weak var ProductName: UILabel!
    @IBOutlet weak var ProductPrice: UILabel!
    
    func setup (product: Product ) {
        
        ProductImage.image = product.image
        ProductName.text = product.name
        ProductPrice.text = product.price
        CellProduct = product
    }
    
    @IBAction func AddToCartPressed(_ sender: Any) {
        cart.append(CellProduct)
    
    }
}
