//
//  mangerVC.swift
//  Amazon
//
//  Created by ibrahim asiri on 15/03/1443 AH.
//

import UIKit

class MangerVC: UIViewController{
   
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    @IBAction func addNewItemBtn(_ sender: Any) {
        performSegue(withIdentifier: "addProduct", sender: sender)
    }
    
    @IBAction func showCart(_ sender: Any) {
        performSegue(withIdentifier: "showCart", sender: sender)
    }
    
    @IBAction func productMng(_ sender: Any) {
        performSegue(withIdentifier: "showProd", sender: sender)
    }
    
}
