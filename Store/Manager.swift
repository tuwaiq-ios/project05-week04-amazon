//
//  Manager.swift
//  Store
//
//  Created by MacBook on 16/03/1443 AH.
//

import UIKit
class Manegar: UIViewController ,UIImagePickerControllerDelegate,UINavigationControllerDelegate{
    
    @IBOutlet weak var mangImage: UIImageView!
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        
        let image = (info [.editedImage] ?? info [.originalImage] ) as! UIImage
       
        mangImage.image = image
        
        dismiss(animated: true)
        
    }
   
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        reloadInputViews()
    }
    
    
    
    @IBOutlet weak var TFname: UITextField!
    
    
    @IBOutlet weak var TFprice: UITextField!
    
    
    @IBOutlet weak var TFdetails: UITextField!
   
    
    //ناقص ربط ابديت
    
    productslist.append(product(photo: mangImage.image,
                               price: Double(TFprice.text ?? "") ?? 0,
                               name: TFname.text!,
                               details: TFdetails.text!))
    
    
    // ربط اضافة المنتج
    
    
   
    let picker = UIImagePickerController()
    
    picker.allowsEditing = true
    picker.delegate = self
    
    
   present(picker, animated: true)
    
    
}
