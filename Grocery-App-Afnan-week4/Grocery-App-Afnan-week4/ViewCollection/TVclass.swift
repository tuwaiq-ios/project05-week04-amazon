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
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        super.prepare(for: segue, sender: sender)
        
        if segue.identifier == "Update-Product" {
            if let UpdatedProduct = segue.destination as? updateProducts {
                if let index = sender as? IndexPath {
                    UpdatedProduct.indexpath = index
                }
            }
        } else {
            let vc2 = segue.destination as! Dis
            vc2.PROfromdis = sender as? products
        }
    }
        
     
    
    
}
