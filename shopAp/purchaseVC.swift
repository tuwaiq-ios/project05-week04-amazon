//
//  purchaseVC.swift
//  shopAp
//
//  Created by Amal on 14/03/1443 AH.
//

import UIKit
class purchaseVC: UIViewController {
    
    @IBAction func purchaseB(_ sender: Any) {
        let alertController = UIAlertController(title: "Congratulations🎉🎉", message:
        " You have complated your purchase", preferredStyle: UIAlertController.Style.alert)
       alertController.addAction(UIAlertAction(title: "OK ", style: UIAlertAction.Style.default,
        handler: { Action in print ("OK") } ))
        alertController.addAction(UIAlertAction(
        title: "cancel ",
        style: UIAlertAction.Style.cancel,
        handler: { Action in
            print ("cancel")
        }
        ))
        present( alertController, animated: true, completion: nil)

    }
}
