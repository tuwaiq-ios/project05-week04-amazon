//
//  Account.swift
//  Amazon
//
//  Created by sara al zhrani on 12/03/1443 AH.
//

import UIKit

class Account : UIViewController , UITextFieldDelegate {
    
    
    @IBOutlet weak var EmailTF: UITextField!
    
    
    @IBOutlet weak var NameTF: UITextField!
    
    @IBOutlet weak var passTF: UITextField!
    
    
    @IBOutlet weak var Delete: UIButton!
    
    
    override func viewDidLoad() {
    super.viewDidLoad()
        NameTF.delegate = self
        EmailTF.delegate = self
        passTF.delegate = self
        let savedName = UserDefaults.standard.value(forKey: "name1") as? String
        NameTF.text = savedName
        
        
        let mail =  UserDefaults.standard.value(forKey: "namekey") as? String
        EmailTF.text = mail
    
        let word = UserDefaults.standard.value(forKey: "passkey") as? String
        passTF.text = word
        
        
        Delete.layer.cornerRadius = 15 
    }
        
    
    @IBAction func RegisterA(_ sender: Any) {
 
    
       
    var name = NameTF.text ?? "Lareen"
    if name.isEmpty
    {
        name = "lareen"
    }
    UserDefaults.standard.set(name,
    forKey: "name1")
      
            let  email = EmailTF.text
            
            UserDefaults.standard.set(email,forKey: "emailkey")
            let pass = passTF.text
            UserDefaults.standard.set(pass,forKey: "passkey")
            
        }
    
    }
