//
//  updata.swift
//  H-Amazon
//
//  Created by  HANAN ASIRI on 15/03/1443 AH.
//

import UIKit

class updata: UIViewController {
    
      var indexpath: IndexPath!
    
    @IBOutlet var nameUpdata: UITextField!
    
    
    @IBOutlet var priceUpdata: UITextField!
    
    @IBOutlet var descriptionUpdata: UITextField!
    
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let updata  = productlist [indexpath.row]
    
    //@IBAction func buttUpdata(_ sender: Any) {
       
       // let UpdatedProduct = product?
            
           // name: nameUpdata.text ?? " ",
          
         // price: Double( priceUpdata.text ?? " " ??
                         
          
          //description: descriptionUpdata.text ?? " ")
        
        //}
          //}
       // }
    }
}
