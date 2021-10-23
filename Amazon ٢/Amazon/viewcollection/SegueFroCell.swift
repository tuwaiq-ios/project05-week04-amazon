//
//  SegueFroCell.swift
//  Amazon
//
//  Created by sara al zhrani on 12/03/1443 AH.
//

import UIKit




var arrProduct = [Product]( )

struct Product {
    let photo : UIImage
    let price :Double
    let name :String
}

class SegueFroCel: UIViewController{

    var PROFromdis: product!
    
    
    @IBOutlet weak var imageD: UIImageView!
    
    
    @IBOutlet weak var nameD: UILabel!
    
    @IBOutlet weak var priceD: UILabel!
    
    @IBOutlet weak var deTails: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        imageD.image = PROFromdis!.photo
        nameD.text = PROFromdis!.name
        priceD.text = "\(PROFromdis!.price) "
        deTails.text = PROFromdis?.details
    }

    
}
