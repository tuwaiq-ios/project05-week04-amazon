//
//  ProductCell.swift
//  saraSaudAmazonApp4
//
//  Created by SARA SAUD on 3/14/1443 AH.
//


import UIKit
 
class ProductsCell: UICollectionViewCell {
    
    @IBOutlet weak var clothesimage: UIImageView!
    @IBOutlet weak var titlelabel: UILabel!
    @IBOutlet weak var price: UILabel!
    
    func setup(with Product: Product) {
        
        clothesimage.image = UIImage(named: Product.image)
        titlelabel.text = Product.title
        price.text = "\(Product.price)SAR"
    }
    
}
