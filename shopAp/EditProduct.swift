//
//  update.swift
//  shopAp
//
//  Created by Amal on 16/03/1443 AH.
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
        
        let Product = allProduct[indexPath.row]
        
        updateImage.image = Product.image
        updatename.text = Product.name
        updatePrice.text = "\(Product.price)"
        updatedescr.text = Product.summary
    }

    @IBAction func updatebutton(_ sender: Any) {
        let updatedProduct = Product(
            name: updatename.text ?? "",
            image: updateImage.image,
            summary: updatedescr.text ?? "",
            price: 0
        )
        allProduct[indexPath.row] = updatedProduct
   }

}
