//
//  AddProductMng.swift
//  Amazon
//
//  Created by ibrahim asiri on 16/03/1443 AH.
//

import UIKit

class AddProductMng: UIViewController, UITextFieldDelegate, UIImagePickerControllerDelegate, UINavigationControllerDelegate {

    @IBOutlet weak var namePrdLbl: UITextField!
    @IBOutlet weak var pricePrdLbl: UITextField!
    @IBOutlet weak var summaryPrdLbl: UITextField!
    @IBOutlet weak var imgPrd: UIImageView!
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        let image = (info[.editedImage] ?? info[.originalImage]) as! UIImage
        imgPrd.image = image
        dismiss(animated: true)
    }
    
    @IBAction func addPrdNew(_ sender: Any) {
        let picker = UIImagePickerController()
        picker.allowsEditing = true
        picker.delegate = self
        present(picker, animated: true)
        
        proudtList.append(Product(name: namePrdLbl.text!, imageP: imgPrd.image, price: Double(pricePrdLbl.text ?? "" ) ?? 0, summary: summaryPrdLbl.text!))
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
}
