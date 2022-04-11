//
//  TVclass.swift
//  H-Amazon
//
//  Created by  HANAN ASIRI on 13/03/1443 AH.
//

import UIKit
class Dis: UIViewController {
    var PR: product?
    
    @IBOutlet var Disimage: UIImageView!
    
    @IBOutlet var Disname: UILabel!
    
    
    @IBOutlet var Disprice: UILabel!
    
    
    @IBOutlet var Disdescription: UILabel!
    
   
    override func viewDidLoad() {
        super.viewDidLoad()
        
        Disimage.image =  PR!.photo
        Disname.text = PR?.name
        Disprice.text = "\(PR!.price)"
        Disdescription.text = PR?.discrption
        
    }
        
    }
