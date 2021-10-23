//
//  cell.swift
//  NARS
//
//  Created by dmdm on 22/10/2021.
//


import UIKit

protocol MyCustomCellDelegator {
    func callSegueFromCell(prodIndex: IndexPath)
}

class MakeupcollectionViewcell: UICollectionViewCell {
    
    var delegate: MyCustomCellDelegator!
   
    
    @IBOutlet weak var makeupImage: UIImageView!
    @IBAction func updatePressed(_ sender: Any) {
    }
    
    
    @IBOutlet weak var makeupprice: UILabel!
    @IBOutlet weak var makeupname: UILabel!
    
  
    var indrxPath: IndexPath?
    func setup(with makeups: Makeup, indexPath: IndexPath){
        
        makeupImage.image = makeups.image
        makeupprice.text = "\(makeups.price)SAR"
        makeupname.text = makeups.name
        indrxPath = indexPath
        
        
    }
   
    @IBAction func edit(_ sender: Any) {
    
        delegate.callSegueFromCell(prodIndex: indrxPath!)
        
    }
    
}
