//
//  ProductCell.swift
//  TSAmazon
//
//  Created by Tsnim Alqahtani on 14/03/1443 AH.
//


import UIKit
 
class ProdectsCell: UICollectionViewCell {
    
    @IBOutlet weak var clothesimage: UIImageView!
    @IBOutlet weak var titlelabel: UILabel!
    @IBOutlet weak var price: UILabel!
    
    func setup(with Product: Product) {
        
        clothesimage.image = UIImage(named: Product.image)
        titlelabel.text = Product.title
        price.text = "\(Product.price)SAR"
    }
    
}
