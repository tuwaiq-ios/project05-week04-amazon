//
//  ddd.swift
//  amazon
//
//  Created by Hassan Yahya on 14/03/1443 AH.
//

import UIKit
class ManegarVC: UIViewController, UIImagePickerControllerDelegate,UINavigationControllerDelegate{
   
    //conect photo
    
    @IBOutlet weak var ourPhoto: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func openPressed(_ sender: Any) {
        
        let picker = UIImagePickerController ()
        picker.allowsEditing = true
        picker.delegate = self
        present(picker, animated: true)
        
    }
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        
        let image = (info[.editedImage] ?? info[.originalImage]) as? UIImage
        ourPhoto.image = image
        dismiss(animated: true)
    }

//text field
    
    @IBOutlet weak var photoManeger: UIImageView!
    @IBOutlet weak var addNameTF: UITextField!
    @IBOutlet weak var descriptionTF: UITextField!
    @IBOutlet weak var priceTF: UITextField!
    @IBAction func createB(_ sender: Any) {
    
        brandList [0].prods.append(
        Product(
            name: addNameTF.text ?? "",
            image: photoManeger.image,
            price: ((priceTF.text ?? "") as NSString).doubleValue ,
            summary: descriptionTF.text ?? ""
            )

      //  cell.productName.text = product?.name
        )
    }
}
