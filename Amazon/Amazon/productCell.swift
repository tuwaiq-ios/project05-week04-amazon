//
//  productCell.swift
//  Amazon
//
//  Created by alanood on 14/03/1443 AH.
//

import UIKit

protocol myCustomeCellDelegator{
    
    func callSegueFromCell(prodindexpath:IndexPath)
    
    
}
class productCell: UICollectionViewCell {
    var cellProduct:Product!
    var delegate:myCustomeCellDelegator!
    
    
    @IBAction func addtoCartbutton(_ sender: Any) {
        cart.append(cellProduct)
      
        print(cart.count)
        
        
    }
    
    @IBOutlet weak var productprice: UILabel!
    @IBOutlet weak var productname: UILabel!
    @IBOutlet weak var productimage: UIImageView!
    
    var indexpath: IndexPath?
    
    func setup(product: Product, indexPath: IndexPath) {
        productimage.image = UIImage(named: product.image)
        productname.text = product.name
        productprice.text = product.price
        cellProduct = product
        indexpath = indexPath
        
    
    }
    @IBAction func updateButton(_ sender: Any) {
        delegate.callSegueFromCell(prodindexpath: indexpath!)
    }
}
