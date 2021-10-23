//
//  producetslist.swift
//  Amazon
//
//  Created by sara al zhrani on 15/03/1443 AH.
//

import UIKit
class PurchasedProduct: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return purchasedProduct.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let bill = tableView.dequeueReusableCell(withIdentifier:"items", for: indexPath ) as!  PillCELL
        
        let itemspill = purchasedProduct[indexPath.row]
        
//        bill.setupCell(product: itemspill)
        
        bill.imagPill.image = itemspill.photo
        bill.namePill.text = itemspill.name
        bill.pricePill.text = "\(itemspill.price)"

       
         return bill
    }
    
   
    
    @IBOutlet weak var thirdTable: UITableView!
    
    
  
    override func viewDidLoad() {
        super.viewDidLoad()
    
        thirdTable.delegate = self
        thirdTable.dataSource = self
        
    }
    
    func tableView(_ tableView: UITableView, trailingSwipeActionsConfigurationForRowAt indexPath: IndexPath) -> UISwipeActionsConfiguration? {
        let deleteAction = UIContextualAction (style: .destructive, title: "Delete") { _, _, _ in
            purchasedProduct.remove(at: indexPath.row)
     
        tableView.deleteRows(at: [indexPath], with: .automatic)
        
        }
        return UISwipeActionsConfiguration(actions:[deleteAction] )
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        thirdTable.reloadData()
    }
    
    
}
    
