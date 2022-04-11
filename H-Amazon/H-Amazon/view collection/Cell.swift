//
//  Cell.swift
//  H-Amazon
//
//  Created by  HANAN ASIRI on 11/03/1443 AH.
//

import UIKit

class Cell: UICollectionViewCell {
    
    var cellProduct: product!
    
    @IBOutlet var imageAmz: UIImageView!
    
    @IBOutlet var priceP: UILabel!
    
    @IBOutlet var nameP: UILabel!
    
    
    
    func setupCell(product: product) {
        
        imageAmz.image =  product.photo
        nameP.text = product.name
        priceP.text = "\(product.price) SAR"
        cellProduct = product
}
    
    
    
  
    
    @IBAction func addtocell(_ sender: Any) {
        if cellProduct != nil {
        ProductInCard.append(cellProduct)
        }
        
    
       }
       }
