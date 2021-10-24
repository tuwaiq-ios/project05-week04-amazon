//
//  UpdateClass.swift
//  Grocery-App-Afnan-week4
//
//  Created by Fno Khalid on 15/03/1443 AH.
//

import UIKit


class updateProducts: UIViewController {
    
    var indexpath:IndexPath?
    

    @IBOutlet weak var newPhoto: UIImageView!
    @IBOutlet weak var NewName: UITextField!
    @IBOutlet weak var NewPrice: UITextField!
    @IBOutlet weak var NewDescription: UITextField!
    
  

    override func viewDidLoad() {
        super.viewDidLoad()
    
        guard let indexpath = indexpath else {return}
      let product = productslist[indexpath.row]
       
        newPhoto.image =  product.photo
        NewName.text =  product.name
        NewPrice.text = "\(String(describing: product.price))"
        NewDescription.text =  product.description
    }
    

    
    @IBAction func UpdateButton(_ sender: Any) {
        
        let UpdatedProduct = products(
            photo: newPhoto.image,
            name: NewName.text  ?? " ",
            price: Double( NewPrice.text ?? " ") ?? 0,
            description: NewDescription.text ?? " ")
        productslist[indexpath?.row ?? 0 ] = UpdatedProduct
        
    }
    
    
   
    
    
}
