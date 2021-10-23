//
//  Cart.swift
//  Amazon
//
//  Created by ibrahim asiri on 13/03/1443 AH.
//

import UIKit

var productCart: Array<Product> = []

class Cart: UIViewController, UITableViewDataSource, UITableViewDelegate {
         
    @IBOutlet weak var tabelView: UITableView!
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if productCart.count > 0 {
            return productCart.count
        }
        else {
            return 0
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let prodt = productCart[indexPath.row]
        let cell = tableView.dequeueReusableCell(withIdentifier: "cellCart", for: indexPath) as! CellCart
        
        cell.imagCart.image = prodt.imageP
        cell.nameCart.text = prodt.summary
        cell.priceCart.text = "\(prodt.price)"
        cell.backgroundColor = UIColor.systemGray5
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        
        if editingStyle == .delete {
            productCart.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .fade)
        }
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tabelView.delegate = self
        tabelView.dataSource = self

    }
    
    @IBAction func adressBtn(_ sender: Any) {
       performSegue(withIdentifier: "showAdrs", sender: sender)
    }
    
    @IBAction func returnBtn(_ sender: Any) {
        performSegue(withIdentifier: "returnStore", sender: sender)
    }
    
}

class CellCart: UITableViewCell {
    
    @IBOutlet weak var imagCart: UIImageView!
    @IBOutlet weak var priceCart: UILabel!
    @IBOutlet weak var nameCart: UILabel!
    
}


