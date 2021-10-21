//
//  managerAdd.swift
//  TSAmazon
//
//  Created by Tsnim Alqahtani on 15/03/1443 AH.
//


import UIKit

class Add: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    @IBOutlet weak var Pname: UITextField!
    
    @IBOutlet weak var Pdescription: UITextField!
    @IBOutlet weak var Pprice: UITextField!
    
    
    @IBOutlet weak var ourImageView: UIImageView!
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func openPressed(_ sender: Any){
        
        
        let piker = UIImagePickerController()
        piker.allowsEditing = true
        piker.delegate = self
        present(piker, animated: true)
        
    }
    
    
    
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        
        let image = (info[.editedImage] ?? info [.originalImage]) as? UIImage
        ourImageView.image = image
        
        dismiss(animated : true )
    }
    
    
    @IBAction func AddProduct(_ sender: Any) {
        
//      if ourImageView.image == nil && Double(Pprice.text) == nil {
//           return
      // }
        
           Products.append(Product(
           title: Pname.text!,
           image: ourImageView.image!,
           price: Double(Pprice.text!)!,
           description: Pdescription.text!))
                    
                }
    }
    
    
