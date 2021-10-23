//
//  deleteCell.swift
//  Store
//
//  Created by MacBook on 16/03/1443 AH.
//

import UIKit
protocol DataCollictionProtocol{
   
    func deleteData(indx: Int)
    
    }

class deleteCell: UICollectionViewCell{
    
    var indxPath: IndexPath?
    
    
    @IBOutlet weak var dImage: UIImageView!
    
    @IBOutlet weak var dName: UILabel!
    
    @IBOutlet weak var dPrice: UILabel!
    
    @IBOutlet weak var dSummary: UILabel!
    
    
var delegate: DataCollictionProtocol?


    @IBAction func deleteButton(_ sender: Any)
    {
    delegate?.deleteData(indx:  (indxPath?.row)!)
}


func setup (product: Product){
    dImage.image = product.image
    dName.text = product.name
    dPrice.text = "\(product.price)"
}

}
