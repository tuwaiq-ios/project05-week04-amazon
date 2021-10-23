//
//  EditeVC.swift
//  iHerb
//
//  Created by Sara M on 16/03/1443 AH.
//

import UIKit

class EditeVC : UIViewController{
    
    var indexPath: IndexPath!
    
  
    
    @IBOutlet weak var imageUpdate: UIImageView!
    @IBOutlet weak var NameUpdate: UITextField!
    @IBOutlet weak var RatingUpdate: UITextField!
    @IBOutlet weak var PraiceUpdate: UITextField!
    @IBOutlet weak var Stateupdate: UITextField!
  
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let pro = productList[indexPath.row]
        NameUpdate.text = pro.name
        imageUpdate.image = pro.logo
        RatingUpdate.text = pro.rating
        PraiceUpdate.text = "\(pro.price)"
        Stateupdate.text = pro.state
    }
    
    
    @IBAction func updatebutton(_ sender: Any) {
        
        let updatedProduct = Product(name: NameUpdate.text ?? "",
                                     rating: RatingUpdate.text ?? "",
                                     logo: imageUpdate.image ,
                                     price:Int(PraiceUpdate.text ?? "")! ,
                                     state: Stateupdate.text ?? "")
        
        
        productList[indexPath.row] = updatedProduct
        
        
    }
    
    
    
    
}

