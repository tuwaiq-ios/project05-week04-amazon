//
//  VC2.swift
//  TSAmazon
//
//  Created by Tsnim Alqahtani on 14/03/1443 AH.
//

import UIKit


class VC2: UIViewController {
    
        var pr : Product?
    var n = productInCart
    
    @IBOutlet weak var imageProdect: UIImageView!
    @IBOutlet weak var Descripition: UILabel!
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
            imageProdect.image = pr!.image 
            Descripition.text = pr!.description
        }
        
        
    }
}

