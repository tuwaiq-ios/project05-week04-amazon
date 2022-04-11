//
//  acount.swift
//  H-Amazon
//
//  Created by  HANAN ASIRI on 12/03/1443 AH.
//

import UIKit
class acount : UIViewController {
 
    
    @IBOutlet var tf1: UITextField!
    
    
    @IBOutlet var tf2: UITextField!
    
    
    @IBOutlet var tf3: UITextField!
    
    
    @IBAction func Registerbuttone(_ sender: Any) {
        
        var name = tf1.text ?? "HANAN"
        if name.isEmpty {
            name = "Empty"
        }
        
        var Email = tf2.text ?? "HANANASIRI.com"
        if Email.isEmpty {
            Email = "Empty"
        }
        
        
        var password = tf3.text ?? "177"
        if password.isEmpty {
            password = "Empty"
        }
        
        
        UserDefaults.standard.set(name, forKey: "name")
        UserDefaults.standard.set(Email, forKey: "email")
        UserDefaults.standard.set(password, forKey: "password")
      
    }
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        let savedname = UserDefaults.standard.value(forKey: "name") as? String
        tf1.text = savedname
        
        let savedemail = UserDefaults.standard.value(forKey: "email") as? String
        tf2.text = savedemail
        
        let savedpassword = UserDefaults.standard.value(forKey: "password") as? String
        tf3.text = savedpassword
        
   
        
}
}


