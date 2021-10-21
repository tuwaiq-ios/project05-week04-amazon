//
//  ProductCell.swift
//  saraSaudAmazonApp4
//
//  Created by SARA SAUD on 3/14/1443 AH.
//


import UIKit

protocol MyCustomCellDelegator {
   func callSegueFromCell(prodIndex: IndexPath)
}

class ProductsCell: UICollectionViewCell {
    
    var delegate: MyCustomCellDelegator!
    
    @IBOutlet weak var clothesimage: UIImageView!
    @IBOutlet weak var titlelabel: UILabel!
    @IBOutlet weak var price: UILabel!
    
    var indrxPath: IndexPath?
    func setup(with Product: Product, indexPath: IndexPath) {
        
        clothesimage.image =  Product.image
        titlelabel.text = Product.title
        price.text = "\(Product.price)$"
        indrxPath = indexPath
    }

    @IBAction func edit(_ sender: Any) {
        delegate.callSegueFromCell(prodIndex: indrxPath!)
    }
    }
    
   
