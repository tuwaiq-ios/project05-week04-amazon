//
//  EditProduct.swift
//  NARS
//
//  Created by dmdm on 22/10/2021.
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
        
        let product = makeups[indexPath.row]
        
        updateImage.image = product.image
    }
    
    
    @IBAction func updatebutton(_ sender: Any) {
        
        let updatedProduct = Makeup(
            price:5,
            image:updateImage.image,
            description: updatedescr.text ?? "",
            name:updatename.text ?? "",
            rating: "")
        makeups[indexPath.row] = updatedProduct
        
        
    }
    
}
