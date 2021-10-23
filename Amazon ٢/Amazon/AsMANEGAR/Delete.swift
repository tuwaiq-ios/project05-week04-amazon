//
//  Delete.swift
//  Amazon
//
//  Created by sara al zhrani on 16/03/1443 AH.
//

import UIKit

    
protocol DataCollictionProtocol{
  func deleteData(indx: Int)
}



class deleteCell: UICollectionViewCell{
  var indexPath: IndexPath?
    
  @IBOutlet weak var dname: UILabel!
  @IBOutlet weak var dPrice: UILabel!
  @IBOutlet weak var dImage: UIImageView!
  var delegate: DataCollictionProtocol?
  @IBAction func deleteButton(_ sender: Any) {
    delegate?.deleteData(indx: (indexPath?.row)!)
    }
  func setup(product: product){
    dImage.image = product.photo
    dname.text = product.name
    dPrice.text = "\(product.price)"
  }
}

    

