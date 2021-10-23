//
//  AddEditProductVC.swift
//  PerfumesApplication
//
//  Created by Kholod Sultan on 16/03/1443 AH.
//

import UIKit

class AddEditProductVC: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    
    var selectedproduct: Product?
    let pickerController = UIImagePickerController()
    var index: Int = 0
    
    @IBOutlet weak var productName: UITextField!
    @IBOutlet weak var productSummary: UITextField!
    @IBOutlet weak var productPrice: UITextField!
    @IBOutlet weak var productQuantity: UITextField!
    @IBOutlet weak var productImage: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        pickerController.delegate = self
        pickerController.allowsEditing = true
        
        if let product = selectedproduct {
            productName.text = product.name
            productSummary.text = product.summary
            productPrice.text = product.price
            productQuantity.text = product.quantity
            productImage.image = product.image
            productImage.isHidden = false
        }
        
    }
    
    @IBAction func addProduct(_ sender: Any) {
        
        let name = productName.text 
        let summary = productSummary.text
        let price = productPrice.text
        let quantity = productQuantity.text
        let image = productImage.image
        
        if (name != nil) && (summary != nil) && (price != nil) && (image != nil) && (quantity != nil){
            
            let product = Product(name: name!, summary: summary!, price: price!, image: image!, quantity: quantity!)
            
            if selectedproduct != nil {
                
                allproducts[index] = product
                
            }else{
                
                allproducts.insert(product, at: 0)
                
            }
            
            navigationController?.popViewController(animated: true)
            
        }else{
            
            let alert = UIAlertController(title: "ERROR", message: "ALL FIELDS ARE REQUIRED", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "OK", style: .default))
            self.present(alert, animated: true)
            
        }
        
    }
    
    
    @IBAction func selectImage(_ sender: Any) {
        
        self.pickerController.sourceType = .photoLibrary
        self.present(self.pickerController, animated: true, completion: nil)
        
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey: Any]) {
        var image: UIImage = UIImage()
        
        if let img = info[UIImagePickerController.InfoKey.editedImage] as? UIImage {
            image = img
        } else if let img = info[UIImagePickerController.InfoKey.originalImage] as? UIImage {
            image = img
        }
        
        productImage.isHidden = false
        productImage.image = image
        
        picker.dismiss(animated: true, completion: nil)
    }
}
