//
//  VC2.swift
//  NARS
//
//  Created by dmdm on 22/10/2021.
//
import UIKit

class VC2: UIViewController{
    
    var pr : Makeup?

    @IBOutlet weak var imageProduct: UIImageView!
    @IBOutlet weak var nameProduct: UILabel!
    @IBOutlet weak var ratingProduct: UILabel!
    @IBOutlet weak var descriptionProduct: UILabel!
    @IBOutlet weak var buttonCart: UIButton!
    @IBAction func ButtonCart(_ sender: Any) {
        
        performSegue(withIdentifier: "show3", sender: sender)
    }
    
    @IBAction func buttonCartInsert(_ sender: Any) {
        
        ProductInCart.append(pr!)
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        if pr != nil {
        nameProduct.text = pr?.name
        imageProduct.image =  pr!.image
        descriptionProduct.text = pr?.description
        ratingProduct.text = pr?.rating
            
        }
        
    }
    
}
