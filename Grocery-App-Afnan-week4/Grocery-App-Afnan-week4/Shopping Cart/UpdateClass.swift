//
//  UpdateClass.swift
//  Grocery-App-Afnan-week4
//
//  Created by Fno Khalid on 15/03/1443 AH.
//

import UIKit


class updateProducts: UIViewController {
    
    var indexpath:  IndexPath!
    

    @IBOutlet weak var newPhoto: UIImageView!
    @IBOutlet weak var NewName: UITextField!
    @IBOutlet weak var NewPrice: UITextField!
    @IBOutlet weak var NewDescription: UITextField!
    
  

    override func viewDidLoad() {
        super.viewDidLoad()
    
        let UpdateProduct = productslist[indexpath.row]
       
        newPhoto.image = UpdateProduct.photo
        NewName.text = UpdateProduct.name
        NewPrice.text = "\(String(describing: UpdateProduct.price))"
        NewDescription.text = UpdateProduct.description
    }
    

    
    @IBAction func UpdateButton(_ sender: Any) {
        
        let UpdatedProduct = products(
            photo: newPhoto.image,
            name: NewName.text  ?? " ",
            price: Double( NewPrice.text ?? " ") ?? 0,
            description: NewDescription.text ?? " "
        )
        productslist[indexpath.row] = UpdatedProduct
    }
    
    
    
    
    
}
