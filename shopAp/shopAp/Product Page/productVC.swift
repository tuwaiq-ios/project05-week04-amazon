//
//  productVC.swift
//  shopAp
//
//  Created by HANAN on 14/03/1443 AH.
//

import UIKit
class productVC: UIViewController {
    
    var H: Product?
    var selectedProduct: Product?
    
    @IBOutlet weak var productImage: UIImageView!
    
    @IBOutlet weak var productName: UILabel!
    
    @IBOutlet weak var productSummary: UILabel!
    
    @IBOutlet weak var productPrice: UILabel!
    
    override func viewDidLoad() {
        
        
//        super.viewDidLoad()
        
        
        productImage.image = selectedProduct!.image
        productName.text = selectedProduct!.name
        productSummary.text = selectedProduct!.summary
        productPrice.text = "\(selectedProduct!.price)"
        
        
        
        
    }
    
    @IBAction func addToCartPressed(_ sender: Any) {
        cart.append(selectedProduct!)
    }
}
