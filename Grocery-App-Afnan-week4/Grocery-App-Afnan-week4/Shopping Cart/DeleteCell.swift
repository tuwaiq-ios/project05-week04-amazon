//
//  DeleteCell.swift
//  Grocery-App-Afnan-week4
//
//  Created by Fno Khalid on 17/03/1443 AH.
//

import UIKit

protocol DataCollictionProtocol{
    
    func deleteData(indx: Int)
    

}

class deleteCell: UICollectionViewCell {
    
    var indexPath: IndexPath?
    
    @IBOutlet weak var productimage: UIImageView!
    
    @IBOutlet weak var productName: UILabel!
    
    @IBOutlet weak var productPrice: UILabel!
    
    
    
    var delegate: DataCollictionProtocol?
    
    
    @IBAction func DeleteButton(_ sender: Any) {
        
        delegate?.deleteData(indx: (indexPath?.row)!)
    }
    
    func setup(product: products){
        productimage.image = product.photo
        productName.text = product.name
        productPrice.text = "\(product.price)"
        
    }
   
}
    

