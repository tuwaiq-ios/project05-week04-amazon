//
//  edit Product.swift
//  Storee1
//
//  Created by Me .. on 16/03/1443 AH.
//

import UIKit

class EditProduct : UIViewController{
  var indexPath: IndexPath!
    
    
  @IBOutlet weak var updatePrice: UITextField!
  @IBOutlet weak var updatedescr: UITextField!
  @IBOutlet weak var updatename: UITextField!
  @IBOutlet weak var updateImage: UIImageView!
    
  override func viewDidLoad() {
    super.viewDidLoad()
    let product = macs[indexPath.row]
    updateImage.image = product.image
      
  }
  @IBAction func updatebutton(_ sender: Any) {
      
      let updatedProduct = Mac(title: updatename.text ?? "", image: updateImage.image, price: 5, description: updatedescr.text ?? "")
      macs[indexPath.row] = updatedProduct
  }
}




