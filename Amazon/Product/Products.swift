//
//  MenuFruit.swift
//  Amazon
//
//  Created by ibrahim asiri on 12/03/1443 AH.
//

import UIKit

class Products: UIViewController {
    var prod: Product?
    
    @IBOutlet weak var imgFruit: UIImageView!
    @IBOutlet weak var priceFruit: UILabel!
    @IBOutlet weak var summryFruit: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        imgFruit.image = prod?.imageP
        priceFruit.text = "\(prod!.price)"
        summryFruit.text = prod?.summary
    }
    
    @IBAction func addCart(_ sender: Any) {
        productCart.append(prod!)
        performSegue(withIdentifier: "showcart", sender: sender)
    }
    
}
