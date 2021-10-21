//
//  VCtax.swift
//  TSAmazon
//
//  Created by Tsnim Alqahtani on 15/03/1443 AH.
//

import UIKit

class VCtax: UIViewController,UITextFieldDelegate {
    
    @IBOutlet weak var tv: UITextField!
    
        override func viewDidLoad() {
            super.viewDidLoad()
        tv.delegate = self
        // Do any additional setup after loading the view.
    }

    @IBAction func insert(_ sender: Any) {
        let name = tv.text!
        performSegue(withIdentifier: "in1", sender: name)
    }
        override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        super.prepare(for: segue, sender: sender)
        let sa = segue.destination as! tneNameShow
        sa.name = sender as? String
    }
        func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        tv.resignFirstResponder()
        return true
    }
}
class tneNameShow: UIViewController {
    var name:String?

    @IBOutlet weak var namelabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        namelabel.text = name
    
}
}

