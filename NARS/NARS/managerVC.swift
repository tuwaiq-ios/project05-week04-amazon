//
//  managerVC.swift
//  NARS
//
//  Created by dmdm on 22/10/2021.
//

import UIKit


class managerVC:UIViewController,UITextFieldDelegate,UIImagePickerControllerDelegate,UINavigationControllerDelegate {
    
    @IBOutlet weak var priceTF: UITextField!
    @IBOutlet weak var imageTF: UIImageView!
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        
        let image = (info[.editedImage] ?? info[.originalImage]) as! UIImage
        imageTF.image = image
        dismiss(animated: true)
    }
    
    
    @IBOutlet weak var desTF: UITextField!
    @IBOutlet weak var nameTF: UITextField!
    
    @IBAction func uploadImage(_ sender: Any) {
        let picker = UIImagePickerController()
        picker.allowsEditing = true
        picker.delegate = self
        present(picker,animated: true)
        
    }
    
    @IBAction func manageAdd(_ sender: Any){
        makeups.append(Makeup (price: Int(priceTF.text ?? "") ?? 0, image: imageTF.image, description: desTF.text!, name:nameTF.text!, rating: ""))
    }
    
    override func viewDidLoad() {
        super .viewDidLoad()
        
    }
}
