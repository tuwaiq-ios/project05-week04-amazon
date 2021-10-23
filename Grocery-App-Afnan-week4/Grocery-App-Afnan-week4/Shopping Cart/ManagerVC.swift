//
//  ManagerVC.swift
//  Grocery-App-Afnan-week4
//
//  Created by Fno Khalid on 15/03/1443 AH.
//

import UIKit


var productM: Array<products>?

class ManagerVC: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    
    @IBOutlet weak var tf1: UITextField!
    
    @IBOutlet weak var tf2: UITextField!
    
    @IBOutlet weak var tf3: UITextField!
    
    @IBOutlet weak var NewImageProduct: UIImageView!
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        let image = (info[.editedImage] ?? info[.originalImage]) as! UIImage
        NewImageProduct.image = image
        
        dismiss(animated: true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
}
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        reloadInputViews()
    }
    
    
    @IBAction func AddnewProduct(_ sender: Any) {
        
        let picker = UIImagePickerController()
        picker.allowsEditing = true
        picker.delegate = self

        present(picker, animated: true)
    
                                     
    }

    @IBAction func AddNewProductToCart(_ sender: Any) {
        
        
        productslist.append(products(
            photo: NewImageProduct.image,
            name: tf1.text!,
            price: Double( tf2.text ?? " ") ?? 0,
            description: tf3.text!)
                       
     )
   
    
}

    
}
   

