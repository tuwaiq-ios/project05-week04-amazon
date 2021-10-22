//
//  productVC.swift
//  Amazon
//
//  Created by alanood on 16/03/1443 AH.
//

import UIKit
class ProductVC: UIViewController{
     
    var selectedProduct: Product?
    
    @IBAction func AddtoCart(_ sender: Any) {
        cart.append(selectedProduct!)
    }
    @IBOutlet weak var productPrice: UILabel!
    @IBOutlet weak var productName: UILabel!
    @IBOutlet weak var productpic: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if selectedProduct != nil {
            productName.text = selectedProduct?.name
            productpic.image = UIImage(named: selectedProduct!.image)
            productPrice.text = selectedProduct?.price
            
            
        }
    }
}
