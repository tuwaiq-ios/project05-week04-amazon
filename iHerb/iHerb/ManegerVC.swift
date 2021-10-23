//
//  ManegerVC.swift
//  iHerb
//
//  Created by Sara M on 16/03/1443 AH.
//



import UIKit


class ManegerVC:UIViewController,UINavigationControllerDelegate,   UITextFieldDelegate,UIImagePickerControllerDelegate {
    
    
    
    
    @IBOutlet weak var PriceTF: UITextField!
    
    @IBOutlet weak var ImageVC: UIImageView!
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        
        let image = (info[.editedImage] ?? info[.originalImage]) as! UIImage
        ImageVC.image = image
        dismiss(animated: true)
    }
    
   
    @IBOutlet weak var RatingTF: UITextField!
    @IBOutlet weak var StateTF: UITextField!
    @IBOutlet weak var NameTF: UITextField!
    @IBAction func uploadImage(_ sender: Any) {
        let picker = UIImagePickerController()
        picker.allowsEditing = true
        picker.delegate = self
        present(picker,animated: true)
        
    }
    
    @IBAction func manageAdd(_ sender: Any){
        productList.append(Product(
                    name: NameTF.text ?? "",
                    rating: RatingTF.text ?? "",
                    logo: ImageVC.image ,
                    price:Int(PriceTF.text ?? "")! ,
                    state: StateTF.text ?? "")
                )
   
    }
   
    
    override func viewDidLoad() {
        super .viewDidLoad()
        
    }


}







