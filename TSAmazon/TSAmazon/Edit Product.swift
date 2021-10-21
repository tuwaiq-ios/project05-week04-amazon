//
//  Edit Product.swift
//  TSAmazon
//
//  Created by Tsnim Alqahtani on 15/03/1443 AH.
//

import UIKit

class EditProduct : UIViewController {
   
    var indexPath: IndexPath!
    
    @IBOutlet weak var updateImage: UIImageView!
    @IBOutlet weak var updatename: UITextField!
    @IBOutlet weak var updatePrice: UITextField!
    @IBOutlet weak var updatedescr: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let product = Products[indexPath.row]
        
        updateImage.image = product.image
        updatename.text = product.title
        updatePrice.text = "\(product.price)SAR"
        updatedescr.text = product.description
    }
    
    @IBAction func updatebutton(_ sender: Any) {
        let updatedProduct = Product(
            title: updatename.text ?? "",
            image: updateImage.image,
            price: 0,
            description: updatedescr.text ?? ""
        )
        
        
        Products[indexPath.row] = updatedProduct
        
        
    }
}
