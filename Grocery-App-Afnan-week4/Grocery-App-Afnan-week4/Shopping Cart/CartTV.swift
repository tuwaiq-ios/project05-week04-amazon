//
//  CartTV.swift
//  Grocery-App-Afnan-week4
//
//  Created by Fno Khalid on 13/03/1443 AH.
//

import UIKit



class cartTV: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return productInCart.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let Cell2 = tableView.dequeueReusableCell(withIdentifier: "cartcell", for: indexPath)as! CartCell
        let cartitems = productInCart[indexPath.row]
        
        Cell2.Cartimage.image = cartitems.photo!
        Cell2.Cartname.text = cartitems.name
        Cell2.Cartprice.text = "\(cartitems.price)"
        
        return Cell2
        
        
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        shoppingCart.reloadData()
        
    }
    @IBOutlet weak var shoppingCart: UITableView!

    var pp: products?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        shoppingCart.delegate = self
        shoppingCart.dataSource = self
        
        shoppingCart.reloadData()
        
    }
    
    func tableView(_ tableView: UITableView, trailingSwipeActionsConfigurationForRowAt indexPath: IndexPath) -> UISwipeActionsConfiguration? {
        
        let deletAction = UIContextualAction(style: .destructive,
                                             title: "Delet") { _, _, _ in
                              productInCart.remove(at: indexPath.row)
                           tableView.deleteRows(at: [indexPath], with: .automatic)
        }
        
        return UISwipeActionsConfiguration(actions: [deletAction])
    }
}
