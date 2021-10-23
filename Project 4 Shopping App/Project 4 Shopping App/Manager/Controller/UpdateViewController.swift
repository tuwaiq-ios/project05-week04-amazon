//
//  UpdateViewController.swift
//  Project 4 Shopping App
//
//  Created by Eth Os on 15/03/1443 AH.
//

import UIKit

class UpdateViewController:UIViewController, UITextFieldDelegate,UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    
    var specificProduct: Product!
    var indexPath: IndexPath!
    
    @IBOutlet weak var updateProductName: UITextField!
    @IBOutlet weak var updateProductPrice: UITextField!
    @IBOutlet weak var updateProductSummery: UITextField!
    @IBOutlet weak var updateProductQuantity: UITextField!
    @IBOutlet weak var updateProductSpecs: UITextField!
    
    @IBOutlet weak var updateProductImage: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        specificProduct = products[indexPath.row]

        updateProductName.text = specificProduct.prodauctName
        updateProductPrice.text = "\(specificProduct.prodauctPrice)"
        updateProductSummery.text = specificProduct.productSummary
        updateProductQuantity.text = "\(specificProduct.productQuantity)"
        updateProductSpecs.text = specificProduct.productSpecs
        updateProductImage.image = specificProduct.productPic
        
        updateProductName.delegate = self
        updateProductPrice.delegate = self
        updateProductSummery.delegate = self
        updateProductQuantity.delegate = self
        updateProductSpecs.delegate = self
    }
    
//    func renevu(){
//        for i in products {
//            revenu.append(i.prodauctPrice)
//        }
//        revenu.reduce(0, +)
//    }
   
    @IBAction func uploadPressed(_ sender: Any) {
        
        let image = UIImagePickerController()
        image.allowsEditing = true
        image.delegate = self
    
        present(image, animated: true)
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        let image = (info[.editedImage] ?? info[.originalImage]) as? UIImage
        updateProductImage.image = image
        dismiss(animated: true)
    }
    
    
    @IBAction func updatePressed(_ sender: Any) {
         
        let update = Product(prodauctName: updateProductName.text ?? "",
                             productPic: updateProductImage.image ?? .none,
                             prodauctPrice: Double(updateProductPrice.text ?? "" ) ?? 0 ,
                             productSummary: updateProductSummery.text ?? "",
                             productQuantity: Int(updateProductQuantity.text ?? "" ) ?? 0,
                             productSpecs: updateProductSpecs.text ?? "")

        products[indexPath.row] = update
        dismiss(animated: true)
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        updateProductName.resignFirstResponder()
        updateProductPrice.resignFirstResponder()
        updateProductSummery.resignFirstResponder()
        updateProductQuantity.resignFirstResponder()
        updateProductSpecs.resignFirstResponder()
        return true
    }

}
