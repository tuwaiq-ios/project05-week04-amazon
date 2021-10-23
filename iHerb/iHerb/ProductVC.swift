//
//  ViewController2.swift
//  iHerb
//
//  Created by Sara M on 12/03/1443 AH.
//

import UIKit

class ProductVC: UIViewController {
    
   
   var productsFromViewController: Product?
    
   override func viewDidLoad() {
    super.viewDidLoad()
        
        
       if productsFromViewController != nil{
      nameVC.text = productsFromViewController?.name
            ratingVC.text = productsFromViewController?.rating
        priceVC.text = "\(productsFromViewController!.price)"
           stateVC.text = productsFromViewController?.state
           imageVC.image = productsFromViewController?.logo
        
       }
        
    }
    
    
    
    
    
    
    
    @IBOutlet weak var nameVC: UILabel!
    @IBOutlet weak var ratingVC: UILabel!
    @IBOutlet weak var stateVC: UILabel!
    @IBOutlet weak var imageVC: UIImageView!
    @IBOutlet weak var priceVC: UILabel!
    
    
    @IBAction func ADDtoCart(_ sender: Any) {
       
        cart.append(productsFromViewController!)
    }
    
}
