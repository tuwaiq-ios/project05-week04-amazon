//
//  ProductVC.swift
//  Macstore
//
//  Created by Me .. on 17/03/1443 AH.
//

import UIKit


class ProductVC: UIViewController{
    
    var selectedproduct: Product?
    var isManager: Bool = false
    
    @IBOutlet weak var addProductButton: UIButton!
    @IBOutlet weak var ImageShowProudct: UIImageView!
    @IBOutlet weak var ProudctNamePage: UILabel!
    @IBOutlet weak var PriceProductPage: UILabel!
    @IBOutlet weak var SummartProduct: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        addProductButton.isHidden = isManager
        
        if let product = selectedproduct {
            ProudctNamePage.text = product.name
            PriceProductPage.text = product.price + " SAR"
            SummartProduct.text = product.description
            ImageShowProudct.image = product.image
        }
        
    }
    
    @IBAction func AddToCartPressedPage(_ sender: Any) {
        cart.append(selectedproduct!)
    }
    
}

