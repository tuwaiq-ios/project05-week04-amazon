//
//  VC2.swift
//  amazon
//
//  Created by Hassan Yahya on 12/03/1443 AH.
//


import UIKit
class VC2 :UIViewController, UITableViewDelegate, UITableViewDataSource {
   
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return prodFromVC1?.prods.count ?? 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
         let product = prodFromVC1?.prods[indexPath.row]
         let cell = tableView.dequeueReusableCell(
             withIdentifier: "ProCell",
             for: indexPath
         )as! cell2
        
        
         cell.product = product
         cell.productName.text = product?.name
         cell.prodImage.image =  product!.image
         cell.prodPrice.text = "\(product!.price)"
         
         
         return cell
    }
    var prodFromVC1:Brand?
    
    @IBOutlet weak var PROTV: UITableView!
    
    @IBOutlet weak var prooImage: UIImageView!
    @IBOutlet weak var prooName: UILabel!
    @IBOutlet weak var prooType: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        prooName.text = prodFromVC1?.name
        prooType.text = prodFromVC1?.type
        prooImage.image = UIImage (named: prodFromVC1!.logo)

        
        PROTV.dataSource = self
        PROTV.delegate = self
    }
}
