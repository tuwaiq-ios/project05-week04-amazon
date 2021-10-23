//
//  CellCollection.swift
//  Amazon
//
//  Created by sara al zhrani on 11/03/1443 AH.
//

import UIKit

protocol ManegarUpdating {func cellSegueFromCell(prodIndex:IndexPath)
    
}

class CellCollection: UICollectionViewCell {
    
    
    var delegate:ManegarUpdating!
    var didTapOnUpdate:(()->Void)?
    @IBOutlet weak var picProductes: UIImageView!
    
    @IBOutlet weak var descriPtion: UILabel!
    
    var cellproduct: product!
    var indexrpath: IndexPath!
    func setupCell(product: product, indexpath: IndexPath) {
        picProductes.image = product.photo
        descriPtion.text = product.name
        indexrpath = indexpath
        print(indexrpath)
        cellproduct = product
   
        
    }
    
    @IBAction func addddd(_ sender: Any) {
        
        arrycart.append(cellproduct)
        purchasedProduct.append(cellproduct)
        
    }
    
    
    
    @IBAction func updatedPR(_ sender: Any) {
            delegate.cellSegueFromCell(prodIndex:  indexrpath)
        
        
        
        
    }
    
    
    
    
    
}
