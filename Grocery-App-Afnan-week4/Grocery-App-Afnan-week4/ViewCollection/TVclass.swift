//
//  TVclass.swift
//  Grocery-App-Afnan-week4
//
//  Created by Fno Khalid on 12/03/1443 AH.
//

import UIKit


class Dis: UIViewController {
    
    
    var PROfromdis: products?
    
    @IBOutlet weak var Disimage: UIImageView!
    
    @IBOutlet weak var Disname: UILabel!
    
    @IBOutlet weak var Disprice: UILabel!
    
    @IBOutlet weak var Disdiscreption: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        Disimage.image =  PROfromdis!.photo
        Disname.text = PROfromdis?.name
        Disprice.text = "\(PROfromdis!.price)"
        Disdiscreption.text = PROfromdis?.description
        

    }
    
   
    
    
}
