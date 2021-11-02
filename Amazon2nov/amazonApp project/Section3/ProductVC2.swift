//
//  ProductVC2.swift
//  amazonApp project
//
//  Created by Ahmed Assiri on 17/03/1443 AH.
//


import UIKit

class ProductVC: UIViewController{
    
    var selectedProduect: Product?
    
    @IBOutlet weak var productImage: UIImageView!
    @IBOutlet weak var productName: UILabel!
    @IBOutlet weak var productPrice: UILabel!
  //  @IBOutlet weak var productSummary: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
   
    if selectedProduect != nil{
        productName.text = selectedProduect?.name
       // productSummary.text = //selectedProduect?.summary
        productPrice.text = selectedProduect?.price
        productImage.image =  selectedProduect!.image
    }
    
}
    @IBAction func addToCartPressed(_ sender: Any) {
        cart.append(selectedProduect!)
    }
    
}
