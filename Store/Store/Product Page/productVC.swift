//
//  productPage.swift
//  Store
//
//  Created by MacBook on 15/03/1443 AH.
//

import UIKit
class productVC
: UIViewController {
    
    var selectedProduct: Product?
    
    @IBOutlet weak var productImage: UIImageView!
    @IBOutlet weak var productName: UILabel!
    @IBOutlet weak var productSummary: UILabel!
    @IBOutlet weak var productPrice: UILabel!
    
    @IBAction func addToCart(_ sender: Any) {
        
        cart.append(selectedProduct!)
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if selectedProduct != nil {
           
            productName.text = selectedProduct?.name
            productPrice.text = selectedProduct?.price
            productSummary.text = selectedProduct?.summary
            productImage.image = UIImage(named: selectedProduct!.image)
        }
        
    }
    
}


