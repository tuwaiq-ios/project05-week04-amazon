//
//  productCell.swift
//  shopAp
//
//  Created by Amal  on 14/03/1443 AH.

import UIKit

protocol MyCustomCellDelegator {
    func callSegueFromCell(prodIndex: IndexPath)
}

class productCell: UICollectionViewCell {
    var cellProduct: Product!
    var delegate: MyCustomCellDelegator!
    
    @IBOutlet weak var productImage: UIImageView!
    @IBOutlet weak var productName: UILabel!
    @IBOutlet weak var productPrice: UILabel!
    
    var indrxPath: IndexPath?
    
    func setup(with product: Product, indexPath:IndexPath){
        productImage.image =  product.image
        productName.text = product.name
        productPrice.text = "\(product.price)"
        cellProduct = product
        indrxPath = indexPath
    }
    @IBAction func addToCartPressed(_ sender: Any) {
        cart.append(cellProduct!)
    }
    @IBAction func Edite(_ sender: Any) {
        delegate.callSegueFromCell(prodIndex: indrxPath!)
    }
}
