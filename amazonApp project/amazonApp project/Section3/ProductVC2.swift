//
//  ProductVC2.swift
//  amazonApp project
//
//  Created by Ahmed Assiri on 17/03/1443 AH.
//


import UIKit

class ProductVC : UIViewController {
    
    
    var selectedProducts: Product?
    
    @IBOutlet weak var productImage: UIImageView!
    
    @IBOutlet weak var productName: UILabel!
    
    @IBOutlet weak var productPrice: UILabel!
    
    override func  viewDidLoad() {
        super.viewDidLoad()
        if selectedProducts != nil {
            productName.text = selectedProducts?.name
            productPrice.text = selectedProducts?.price
           // prosum.text = selectedProduct?.summary
            productImage.image = UIImage(named: selectedProducts!.image)
         }
        }
    
 //   @IBAction func AddToList(_ sender: Any) {
      //  cart.append(selectedProducts??
   //) }
}

