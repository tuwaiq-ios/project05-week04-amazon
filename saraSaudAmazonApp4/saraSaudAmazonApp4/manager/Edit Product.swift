//
//  Edit Product.swift
//  saraSaudAmazonApp4
//
//  Created by SARA SAUD on 3/15/1443 AH.
//

import UIKit

class editProduct:UIViewController {

     var indexPath: IndexPath!
    
    @IBOutlet weak var editproductimage: UIImageView!
    @IBOutlet weak var editProductName: UITextField!
    @IBOutlet weak var editProductPrice: UITextField!
    @IBOutlet weak var editsummary: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let product = Products[indexPath.row]
        
        editproductimage.image = product.image
        editProductName.text = product.title
        editProductPrice.text = "\(product.price)$"
        editsummary.text = product.description
        
    }
    
    
    @IBAction func editbotton(_ sender: Any) {
        let updatedProduct = Product(
            title: editProductName.text ?? "",
            image: editproductimage.image,
            
           
            price: 0 ,
            
            description: editsummary.text ?? ""
        )
        
        
        Products[indexPath.row] = updatedProduct
        
        
        
        
    }
}
