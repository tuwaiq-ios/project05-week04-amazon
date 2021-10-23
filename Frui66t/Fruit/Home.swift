//
//  Home.swift
//  Fruit
//
//  Created by ibrahim asiri on 16/03/1443 AH.
//

import UIKit

class Home: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func customBtn(_ sender: Any) {
        performSegue(withIdentifier: "custom", sender: sender)
    }
    @IBAction func mangerBtn(_ sender: Any) {
        performSegue(withIdentifier: "maneger", sender: sender)
    }
}
