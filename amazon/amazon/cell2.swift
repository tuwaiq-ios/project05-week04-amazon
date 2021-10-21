//
//  cell2.swift
//  amazon
//
//  Created by Hassan Yahya on 12/03/1443 AH.
//

import UIKit
class cell2 :UITableViewCell {
    @IBOutlet weak var prodImage: UIImageView!
    @IBOutlet weak var prodPrice: UILabel!
    @IBOutlet weak var buttonC: UIButton!
    @IBOutlet weak var productName: UILabel!
    
    var product: Product!
    
   
    @IBAction func buttonCCC(_ sender: Any) {
        productInCart.append(product)
        
        
    }
    
    
}
