//
//  purchaseVC.swift
//  shopAp
//
//  Created by Amal on 14/03/1443 AH.
//




import UIKit
class addNewProduct:

    UIViewController ,UITextFieldDelegate, UIImagePickerControllerDelegate, UINavigationControllerDelegate{
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    @IBOutlet weak var imageAdd: UIImageView!
    @IBOutlet weak var nameAdd: UITextField!
    @IBOutlet weak var priceAdd: UITextField!
    @IBOutlet weak var descriptionAdd: UITextField!

    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        var image = (info[.editedImage] ?? info[.originalImage]) as? UIImage

        imageAdd.image = image
        dismiss(animated: true)
}

    @IBAction func ButtonCart(_ sender: Any) {
        allProduct.append(Product( name: nameAdd.text!, image: imageAdd.image,
        summary: descriptionAdd.text!, price: Double( priceAdd.text ?? " " ) ?? 0
  )
                          )
    }
    @IBAction func addProductButton(_ sender: Any) {
        var picker = UIImagePickerController()
         picker.allowsEditing = true
         picker.delegate = self
         present(picker, animated: true)
    }
}
  
  
 
  
 
