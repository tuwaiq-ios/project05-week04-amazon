//
//  addNewproduct.swift
//  Amazon
//
//  Created by alanood on 16/03/1443 AH.
//

import UIKit
class addNewproduct: UIViewController, UINavigationControllerDelegate, UIImagePickerControllerDelegate ,UITextFieldDelegate{
    
    override func viewDidLoad() {
        super.viewDidLoad()
         
        
    }
    @IBOutlet weak var productImage: UIImageView!
    @IBOutlet weak var productTF: UITextField!
    @IBAction func addButton(_ sender: Any) {
   let picker = UIImagePickerController()
    picker.allowsEditing = true
    picker.delegate = self
    present(picker,animated: true)
    
    
    }
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
      
        let image  = (info[.editedImage] ?? info[.originalImage] )as? UIImage
        
        productImage.image = image
       dismiss(animated: true)
    }
    
}
