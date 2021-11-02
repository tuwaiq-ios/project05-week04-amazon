//
//  CartVC3.swift
//  amazonApp project
//
//  Created by Ahmed Assiri on 17/03/1443 AH.
//

import Foundation
//
//  CartVC.swift
//  AMAZONapp1
//
//  Created by Ahmed Assiri on 16/03/1443 AH.
//


import UIKit

class CartVC: UIViewController,UITableViewDelegate,UITableViewDataSource{

    @IBOutlet weak var CartTV: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        CartTV.delegate = self
        CartTV.dataSource = self
    }
    override func viewWillAppear(_ animated: Bool) {
        CartTV.reloadData()
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return cart.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cartCell = tableView.dequeueReusableCell(withIdentifier: "CartCell", for: indexPath) as! CartCell
        let product = cart [indexPath.row]
        cartCell.setup(product: product)
        return cartCell
    }
    func tableView(_ tableView: UITableView, trailingSwipeActionsConfigurationForRowAt indexPath: IndexPath) -> UISwipeActionsConfiguration? {
        
        let deleteAction = UIContextualAction(style: .destructive, title: "Delete") {_, _, _ in cart.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .automatic)
        }
        return UISwipeActionsConfiguration(actions: [deleteAction])
        
    }
}

 
