//
//  purchaseVC.swift
//  shopAp
//
//  Created by HANAN on 14/03/1443 AH.
//

import UIKit
class purchaseVC: UIViewController {
    
    @IBAction func purchaseB(_ sender: Any) {
        

        //  message
        
        let alertController = UIAlertController(title: " Congratulations🎊",
        message: " You have complated your purchase!",
        preferredStyle: UIAlertController.Style.alert)
        
        
        
        // ok , cancel
        
        
        alertController.addAction(UIAlertAction(
        title: "OK ",
        style: UIAlertAction.Style.default,
        handler: { Action in
            print ("OK")
        }
        
        ))
        
        alertController.addAction(UIAlertAction(
        title: "cancel ",
        style: UIAlertAction.Style.cancel,
        handler: { Action in
            print ("cancel")
        }
        
        ))
        
        
        //present

        present( alertController, animated: true, completion: nil)
        
    }
}
