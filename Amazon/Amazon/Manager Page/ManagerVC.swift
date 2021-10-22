//
//  ManagerVC.swift
//  Amazon
//
//  Created by Fawaz on 15/03/1443 AH.
//

import UIKit
class ManagerVC: UIViewController, UIImagePickerControllerDelegate,UINavigationControllerDelegate, UITextFieldDelegate{
  
  func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
    
    let image = (info[.editedImage] ?? info[.originalImage]) as? UIImage
    addProductImage.image = image
    dismiss(animated: true)
  }
  
  @IBOutlet weak var addProductImage: UIImageView!
  @IBOutlet weak var addProductName: UITextField!
  @IBOutlet weak var addProductDescription: UITextField!
  @IBOutlet weak var addProductPrice: UITextField!
  
  @IBAction func addImage(_ sender: Any) {
    
    let picker = UIImagePickerController ()
    picker.allowsEditing = true
    picker.delegate = self
    present(picker, animated: true)
  }
  
  @IBAction func creatProduct(_ sender: Any) {
    
    allProducts.append(
      Product(
        image: addProductImage.image ,
        name: addProductName.text ?? "",
        summary: addProductDescription.text ?? "",
        price: addProductPrice.text ?? ""
      )
    )
  }
  func textFieldShouldReturn(_ textField: UITextField)-> Bool {
    
    addProductName.resignFirstResponder()
    addProductDescription.resignFirstResponder()
    addProductPrice.resignFirstResponder()
    
    return true
  }
  override func viewDidLoad() {
    super.viewDidLoad()
    
    addProductName.delegate = self
    addProductDescription.delegate = self
    addProductPrice.delegate = self
  }
}
