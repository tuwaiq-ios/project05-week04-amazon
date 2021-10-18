//
//  ProductCollectionViewCell.swift
//  AmazonApp
//
//  Created by SARA SAUD on 3/12/1443 AH.
//

import UIKit

class ProductCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var imageProduct: UIImageView!
    
    @IBOutlet weak var productName: UILabel!
    @IBOutlet weak var productPrice: UILabel!
    
    
    @IBOutlet weak var productLike: UIButton!
    
    @IBAction func productLike(_ sender: Any) {
        
    }
    func setupCell(photo: UIImage, name: String ,price: Double) {
        imageProduct.image = photo
        productName.text = name
        productPrice.text = "\(price) $"
    }
}
