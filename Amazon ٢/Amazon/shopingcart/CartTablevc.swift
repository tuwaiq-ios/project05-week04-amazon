//
//  CartTablevc.swift
//  Amazon
//
//  Created by sara al zhrani on 13/03/1443 AH.
//

import UIKit


class CartTablevc : UIViewController, UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
       return arrycart.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cartcell =  tableView.dequeueReusableCell(withIdentifier:"cell", for: indexPath ) as! CartCell
        
        let itemscart = arrycart[indexPath.row]
        
        cartcell.cartImace.image =  itemscart.photo
        cartcell.Cartname.text = itemscart.name
        cartcell.CartPrice.text = "\(itemscart.price)"
        
        return cartcell
        
    }
    
    
    
    @IBOutlet weak var shopingCart: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        shopingCart.delegate = self
        shopingCart.dataSource = self
        
        
        
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        shopingCart.reloadData()
    }
    
    func tableView(_ tableView: UITableView, trailingSwipeActionsConfigurationForRowAt indexPath: IndexPath) -> UISwipeActionsConfiguration? {
        let deleteAction = UIContextualAction (style: .destructive, title: "Delete") { _, _, _ in
        arrycart.remove(at: indexPath.row)
     
        tableView.deleteRows(at: [indexPath], with: .automatic)
        
        }
        return UISwipeActionsConfiguration(actions:[deleteAction] )
    }
   
}
