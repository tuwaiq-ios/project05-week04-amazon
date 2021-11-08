//
//  manager.swift
//  Fruit
//
//  Created by PC on 16/03/1443 AH.
//

import UIKit
class manager: UIViewController,UITextFieldDelegate,UIImagePickerControllerDelegate,UINavigationControllerDelegate {
    
    @IBOutlet weak var imaget: UIImageView!
    
    
    @IBOutlet weak var namet: UITextField!
    
    
    @IBOutlet weak var pricet: UITextField!
  
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        let image = (info[.editedImage] ?? info[.originalImage]) as! UIImage
        imaget.image = image
        dismiss(animated: true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func buttont(_ sender: Any){
        let picker = UIImagePickerController()
        picker.allowsEditing = true
        picker.delegate = self
        present(picker,animated: true)
        
         fr.append(Fruit(image: imaget.image, name: namet.text!))
        
    }
}


