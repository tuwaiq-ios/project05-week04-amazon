//
//  image.swift
//  AmazonApp
//
//  Created by SARA SAUD on 3/12/1443 AH.
//

import UIKit
class VC3:UIViewController,UIImagePickerControllerDelegate,UINavigationControllerDelegate {
    
    @IBOutlet weak var ourImageView: UIImageView!
    

    @IBAction func openPressed(_ sender: Any) {
        let picker = UIImagePickerController()
        picker.allowsEditing =  true
        picker.delegate = self
        
       present(picker, animated:true)
        
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        let image = (info[.editedImage] ?? info[.originalImage]) as? UIImage
        ourImageView.image = image
                dismiss(animated: true)
    }
}
