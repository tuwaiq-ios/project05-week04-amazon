//
//  Account.swift
//  Grocery-App-Afnan-week4
//
//  Created by Fno Khalid on 12/03/1443 AH.
//

import UIKit

class Account: UIViewController {
        
    
    @IBOutlet weak var tf1: UITextField!
    
    @IBOutlet weak var tf2: UITextField!
    
    @IBOutlet weak var tf3: UITextField!
    
    @IBOutlet weak var DeleteButton1: UIButton!
    
    @IBAction func Registerbutton(_ sender: Any) {
        
        var name = tf1.text ?? "Afnan"
                 if name.isEmpty {
                  name = ""
                 }
        
            var Email = tf3.text ?? "Afnanmoghram@gmail.com"
                if Email.isEmpty {
                    Email = ""
                }
            var password = tf2.text ?? "12345"
                if password.isEmpty {
                        password = ""
                }
        
        UserDefaults.standard.set(name, forKey: "name")
        UserDefaults.standard.set(Email, forKey: "email")
        UserDefaults.standard.set(password, forKey: "password")
    }
    
    override  func viewDidLoad() {
          
         super.viewDidLoad()
          
        _ = UserDefaults.standard.value(forKey: "name") as? String?
//         tf1.text = savedname
         
         let savedemail = UserDefaults.standard.value(forKey: "email") as? String
         tf3.text = savedemail
         
         let savedpassword = UserDefaults.standard.value(forKey: "password") as? String
         tf2.text = savedpassword
    }

}
