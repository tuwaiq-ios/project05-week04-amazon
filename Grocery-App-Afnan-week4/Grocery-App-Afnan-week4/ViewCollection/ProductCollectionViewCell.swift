//
//  ProductCollectionViewCell.swift
//  Grocery-App-Afnan-week4
//
//  Created by Fno Khalid on 11/03/1443 AH.
//

import UIKit


protocol updateButtondelgate{
    
    func callSegueFromCell(Productindexpath: IndexPath )
}


class ProductCollectionViewCell: UICollectionViewCell {
    
    var PRindexpath: IndexPath?
    var Deleteindex: IndexPath?
    var delegate: updateButtondelgate!
    var delegates: DataCollictionProtocol?
    
    @IBOutlet weak var imgproduct: UIImageView!
    
    @IBOutlet weak var nameproduct: UILabel!
    
    @IBOutlet weak var priceproduct: UILabel!
    
    var cellproduct: products!
    
    func setupCell(products: products, indexpath: IndexPath ) {
        imgproduct.image =  products.photo
        nameproduct.text = products.name
        priceproduct.text = "\(String(describing: products.price)) SAR"
        cellproduct = products
        PRindexpath = indexpath
    }
    
    @IBAction func Addtocartbutton(_ sender: Any) {
        productInCart.append(cellproduct)
    }
    
    @IBAction func UpdateButton(_ sender: Any) {
        delegate.callSegueFromCell(Productindexpath: PRindexpath!)
        
    }
    
}
