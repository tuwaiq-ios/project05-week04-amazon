//
//  ProductCell.swift
//  TSAmazon
//
//  Created by Tsnim Alqahtani on 14/03/1443 AH.
//


import UIKit
 
protocol MyCustomCellDelegator {
    func callSegueFromCell(prodIndex: IndexPath)
}

class ProdectsCell: UICollectionViewCell {

    
    var delegate: MyCustomCellDelegator!
    @IBOutlet weak var clothesimage: UIImageView!
    @IBOutlet weak var titlelabel: UILabel!
    @IBOutlet weak var price: UILabel!
    
    
    var indrxPath: IndexPath?
    func setup(with Product: Product, indexPath: IndexPath) {
        
        clothesimage.image = Product.image
        titlelabel.text = Product.title
        price.text = "\(Product.price)SAR"
        indrxPath = indexPath
    }
    
    @IBAction func edit(_ sender: Any) {
        delegate.callSegueFromCell(prodIndex: indrxPath!)

        
    }
    
}
