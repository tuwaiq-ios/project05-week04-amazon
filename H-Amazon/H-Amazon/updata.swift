//
//  updata.swift
//  H-Amazon
//
//  Created by  HANAN ASIRI on 15/03/1443 AH.
//

import UIKit

class updata: UIViewController {
    
      var indexpath: IndexPath!
    
    @IBOutlet var imageupdata: UIImageView!
    
    @IBOutlet var nameUpdata: UITextField!
    
    
    @IBOutlet var priceUpdata: UITextField!
    
    @IBOutlet var descriptionUpdata: UITextField!
    
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        guard let indexpath = indexpath else {return}
        let product = productlist[indexpath.row]
        
        imageupdata.image = product.photo
        nameUpdata.text = product.name
        priceUpdata.text = "\(product.price)"
        descriptionUpdata.text = product.discrption

    }
    
    @IBAction func addbuttone(_ sender: Any) {
        let updata = product(photo: imageupdata.image,
                             name: nameUpdata.text ?? " ",
                             price: Double (priceUpdata.text ?? " ") ?? 0 ,
                             discrption: descriptionUpdata.text ?? " " )
                              productlist[indexpath?.row ?? 0 ] = updata
    }
    
}
