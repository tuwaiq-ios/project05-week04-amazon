//
//  Cell1.swift
//  Storee1
//
//  Created by Me .. on 12/03/1443 AH.
//

import UIKit

protocol MyCustomCellDelegator {
    func callSegueFromCell(prodIndex: IndexPath)
}
 
class ClothesCell: UICollectionViewCell {
    
    @IBAction func updateButton(_ sender: Any) {
    }
    var delegate: MyCustomCellDelegator!
    
    @IBOutlet weak var clothesimage: UIImageView!
    @IBOutlet weak var titlelabel: UILabel!
    @IBOutlet weak var price: UILabel!
    
    var indrxPath: IndexPath?
    func setup(with Macs: Mac,indexPath: IndexPath) {
        
        clothesimage.image = Macs.image
        titlelabel.text = Macs.title
        price.text = "\(Macs.price)SAR"
        indrxPath = indexPath
    }
    @IBAction func edit(_ sender: Any) {
        
        delegate.callSegueFromCell(prodIndex: indrxPath!)
    }
}
