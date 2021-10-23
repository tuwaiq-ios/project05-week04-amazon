//
//  Manager.swift
//  Storee1
//
//  Created by Me .. on 14/03/1443 AH.
//

import UIKit

class ManagerVC: UIViewController,UITextFieldDelegate,UIImagePickerControllerDelegate,UINavigationControllerDelegate {
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        
        let image = (info[.editedImage] ?? info[.originalImage]) as! UIImage
        imageTV.image = image
        dismiss(animated: true)
        
      }
    
    @IBOutlet weak var titleTF: UITextField!
    @IBOutlet weak var descipitionTF: UITextField!
    @IBOutlet weak var priceTF: UITextField!
    @IBOutlet weak var imageTV: UIImageView!
    @IBAction func ManagerAdd(_ sender: Any) {
        
        let picker = UIImagePickerController()
             picker.allowsEditing = true
             picker.delegate = self
             present(picker,animated: true)
        
       // macs.append(Mac(title: titleTF.text!, image: imageTV.image, price: Int(priceTF.text ?? "") ?? 0, description: descipitionTF.text!))
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        reloadInputViews()
    }
    
    
    @IBAction func NewADD(_ sender: Any) {
        macs.append(Mac(title: titleTF.text!, image: imageTV.image, price: Int(priceTF.text ?? "") ?? 0, description: descipitionTF.text!))
        
    }
}
