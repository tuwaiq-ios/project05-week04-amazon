//
//  managerAdd.swift
//  saraSaudAmazonApp4
//
//  Created by SARA SAUD on 3/15/1443 AH.
//

import UIKit
class Add:UIViewController,UIImagePickerControllerDelegate,UINavigationControllerDelegate {
    
    @IBOutlet weak var PName: UITextField!
    @IBOutlet weak var PPrice: UITextField!
    @IBOutlet weak var PSummary: UITextField!
    
    
    @IBOutlet weak var ourImageView: UIImageView!
    
    
    @IBAction func openPressed(_ sender: Any) {
        let picker = UIImagePickerController()
        picker.allowsEditing =  true
        picker.delegate = self
        
        present(picker, animated:true)
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        let image = (info[.editedImage] ?? info[.originalImage]) as? UIImage
        ourImageView.image = image
        dismiss(animated: true)
    }
    
    @IBAction func AddProduct(_ sender: Any) {

//        if ourImageView.image == nil && Double(PPrice.text) == nil {
//
//            return
//        }

        Products.append(Product(
                title: PName.text! ,
                image: ourImageView.image! ,
                price: Double(PPrice.text!)! ,
                description: PSummary.text!))
        }
    
    
}
