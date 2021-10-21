//
//  VC2.swift
//  saraSaudAmazonApp4
//
//  Created by SARA SAUD on 3/14/1443 AH.
//


import UIKit

class VC2: UIViewController {
    
        var pr : Product?
    var n = productInCart
    
    @IBOutlet weak var imageProdect: UIImageView!
    @IBOutlet weak var Descripition: UILabel!
    
    @IBOutlet weak var price2: UILabel!
    @IBOutlet weak var buttonCart: UIButton!
   
    @IBAction func buttonCartInsert(_ sender: Any) {
        
        productInCart.append(pr!)
    }
    
    
    @IBAction func ButtonCart(_ sender: Any) {
      performSegue(withIdentifier: "show3", sender: sender)
    
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if pr != nil {
            imageProdect.image =  pr!.image 
            Descripition.text = pr!.description
            price2.text="\(pr!.price)$"
        }
    }
}
