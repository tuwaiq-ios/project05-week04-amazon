//
//  desc.swift
//  Fruit
//
//  Created by PC on 12/03/1443 AH.
//


import UIKit
class desc:UIViewController{
    
   
    @IBOutlet weak var imagev: UIImageView!
    @IBOutlet weak var pricedesc: UILabel!
    @IBOutlet weak var summry: UILabel!
    
    @IBOutlet weak var cartbutton: UIButton!
    
    var p: product?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        imagev.image = p?.image
        pricedesc.text = "\(p!.price)"
        summry.text = p?.summry
        
        
    }
    @IBAction func addbutton(_ sender: Any) {
        
        productIntCart.append(p!)
        performSegue(withIdentifier: "show", sender: sender)
        
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        super.prepare(for: segue, sender: sender)
        let name1 = segue.destination as! Vc3
    }


//    @IBAction func Addbutton(_ sender: Any) {
//        performSegue(withIdentifier: "show", sender: sender)
//
//    }
   
  
    
}

struct product{
    var image : UIImage!
    var price : Double
    var summry : String
//    var name : String
}
var pr = [
    product(image: UIImage(named: "موز66")!, price: 8.9, summry: "موز بلدي"),
    product(image: UIImage(named: "تفاح66")!, price: 7.0, summry:"تفاح بلدي"),
    product(image: UIImage(named: "فراوله66")!, price: 5, summry: "فراوله بلدي"),
    product(image: UIImage(named: "بطيخ66")!, price: 20, summry: "بطيخ بلدي")
]

