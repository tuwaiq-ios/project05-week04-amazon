//
//  Updated.swift
//  Amazon
//
//  Created by sara al zhrani on 15/03/1443 AH.
//

import UIKit
class Updated : UIViewController{
    
  
    
    @IBOutlet weak var proudectUpdate: UITextField!
    @IBOutlet weak var priceUpdate: UITextField!
    @IBOutlet weak var detailsUpdat: UITextField!
    @IBOutlet weak var updateImage: UIImageView!
    
    var indexpath:IndexPath?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        guard let indexpath = indexpath else { return }
        let product = producetslist[indexpath.row]
            updateImage.image = product.photo
            priceUpdate.text = "\(product.price)"
            detailsUpdat.text = product.details
            priceUpdate.text = product.name
     
       
          
        
  
    }
    
    
    
    
    @IBAction func UpDated(_ sender: Any) {
        let updateProduct = product(photo: updateImage.image,
                                    price: 0,
                                    name: priceUpdate.text ?? " ",
                                    details: detailsUpdat.text ?? " ")
        producetslist[indexpath?.row ?? 0] = updateProduct

    }
}
