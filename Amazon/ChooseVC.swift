//
//  ChooseVC.swift
//  Amazon
//
//  Created by ibrahim asiri on 15/03/1443 AH.
//

import UIKit

class ChooseVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
   
    @IBAction func customBtn(_ sender: Any) {
        performSegue(withIdentifier: "custom", sender: sender)
    }
    @IBAction func mangerBtn(_ sender: Any) {
        performSegue(withIdentifier: "manger", sender: sender)
    }
    
    @IBAction func opinBtn(_ sender: Any) {
        performSegue(withIdentifier: "opinMng", sender: sender)
    }
}
