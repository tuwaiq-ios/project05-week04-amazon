//
//  ProductCell.swift
//  amazonApp project
//
//  Created by Ahmed Assiri on 17/03/1443 AH.
//



import UIKit


class ProductCell : UICollectionViewCell {
    
    var cellProduct: Product!
    
    @IBOutlet weak var productImage: UIImageView!
    
    @IBOutlet weak var productName: UILabel!
    
    @IBOutlet weak var productPrice: UILabel!
    
    
    func setup( product : Product) {
        productName.text = product.name
        productImage.image = UIImage(named: product.image)
        productPrice.text = product.price
        cellProduct = product
    }
    @IBAction func AddToList(_ sender: Any) {
        cart.append(cellProduct)
    }
    
}
