//
//  CartShowMng.swift
//  Amazon
//
//  Created by ibrahim asiri on 16/03/1443 AH.
//

import UIKit

//var counter: [String: Double] = [:]

class Purchase: UIViewController, UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()

        tableView.dataSource = self
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return productCart.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let infoMng = productCart[indexPath.row]
        let cell = tableView.dequeueReusableCell(withIdentifier: "cellShowMng", for: indexPath) as! CartMngCell
        
        cell.imgCartMng.image = infoMng.imageP
        cell.nameProdMng.text = infoMng.name
        cell.backgroundColor = UIColor.systemGray5
        
        return cell
    }
    
}

class CartMngCell: UITableViewCell {
    
    @IBOutlet weak var imgCartMng: UIImageView!
    @IBOutlet weak var nameProdMng: UILabel!
    
}
