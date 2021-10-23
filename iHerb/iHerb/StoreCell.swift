//
//  PicCell.swift
//  iHerb
//
//  Created by Sara M on 12/03/1443 AH.
//

import UIKit
protocol MyCustomCellDelegator {
    func callSegueFromCell(prodIndex: IndexPath)
}
class StoreCell : UICollectionViewCell {
 
    var delegate: MyCustomCellDelegator!
    
    
    
   @IBAction func Update(_ sender: Any) {
    }
    @IBOutlet weak var picview: UIImageView!
    @IBOutlet weak var namelabel: UILabel!
    @IBOutlet weak var ratinglabel: UILabel!
    @IBOutlet weak var pricelabel: UILabel!
    @IBOutlet weak var statelabel: UILabel!
   
    
    var indrxPath: IndexPath?
    
    func setup(with productList: Product, indexPath: IndexPath){
        
        
        picview.image = productList.logo
        pricelabel.text = "\(productList.price)"
        namelabel.text = productList.name
        statelabel.text = productList.state
        ratinglabel.text = productList.rating
        indrxPath = indexPath
    }
        
    @IBAction func UpdateCell(_ sender: Any) {
      
        delegate.callSegueFromCell(prodIndex: indrxPath!)
    }
}
