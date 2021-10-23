//
//  Manegar.swift
//  Amazon
//
//  Created by sara al zhrani on 15/03/1443 AH.
//

import UIKit
class Manegar : UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    
    @IBOutlet weak var manegarImage: UIImageView!
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        let image = (info[.editedImage] ?? info[.originalImage]) as! UIImage
        manegarImage.image = image
        
        dismiss(animated: true)
    }
    
    
    @IBOutlet weak var Tname: UITextField!
    
    @IBOutlet weak var Tprice: UITextField!
    
    @IBOutlet weak var Tdetails: UITextField!

    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        reloadInputViews()
    }
    
    @IBAction func Update(_ sender: Any) {
  
        producetslist.append(product(photo: manegarImage.image, price:  Double(Tprice.text ?? "") ?? 0, name: Tname.text!, details:  Tdetails.text!))
    }

    @IBAction func addToProduct(_ sender: Any) {
        
        let picker = UIImagePickerController()
            picker.allowsEditing = true
            picker.delegate = self
        
        present(picker, animated: true)
    }
        
}
    
  
    
    
 
  
    
    
        
    
    
    
    
    
    




