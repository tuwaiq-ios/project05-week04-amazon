//
//  managerVC.swift
//  amazon
//
//  Created by m-alqahtani on 15/03/1443 AH.
//
import UIKit

class managerVC :UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate,UITextFieldDelegate {
    
    var currentImage: UIImage!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

@IBAction func opencam(_ sender: UIButton) {
        let picker = UIImagePickerController()
            picker.allowsEditing = true
            picker.delegate = self
            present(picker, animated: true)
    }
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
         let image = (info[.editedImage] ?? info[.editedImage]) as? UIImage
    
        currentImage = image

            dismiss(animated: true)
        
    }
 
    @IBOutlet weak var nameofpro: UITextField!
    
    @IBOutlet weak var priceofpro: UITextField!
    
    @IBOutlet weak var sumurayofpro: UITextField!
    
    @IBAction func Addtostore(_ sender: Any) {
        let item = Item(name: nameofpro.text!, price1: priceofpro.text!, logo: currentImage, spe: sumurayofpro.text!)
        
        List.append(item)
        
    }
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
}
