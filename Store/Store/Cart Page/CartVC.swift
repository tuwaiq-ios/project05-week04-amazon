//
//  CartVC.swift
//  Store
//
//  Created by MacBook on 15/03/1443 AH.
//

import UIKit


class CartVC: UIViewController, UITableViewDelegate, UITableViewDataSource {
    var checkedProduct: Product?
    
    @IBOutlet weak var cartTV: UITableView!
    
        override func viewDidLoad() {
        super.viewDidLoad()
            
            cartTV.dataSource = self
            cartTV.delegate = self
        
    }
    
    //to add to cart more of type from products
    override func viewWillAppear(_ animated: Bool) {
        cartTV.reloadData()
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return cart.count
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cartcell = tableView.dequeueReusableCell(withIdentifier: "cartcell", for: indexPath) as! CartCell
        
        let product = cart[indexPath.row]
        
        cartcell.Setup(product: product)
       
        return cartcell
        
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
       
        let product = cart[indexPath.row]
       
        performSegue(withIdentifier: "show_pay", sender: product)
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        super.prepare(for: segue, sender: sender)
       
        // نقصد ب let المتغير وليس الكلاس
        let product = segue.destination as! CartVC
        product.checkedProduct = sender as? Product
        
    }
    
//code of deletion
    func tableView(_ tableView: UITableView, trailingSwipeActionsConfigurationForRowAt indexPath: IndexPath) -> UISwipeActionsConfiguration? {
        let DeleteAction = UIContextualAction(style: .destructive,
                                              title: "Delete"){ _, _, _ in
            cart.remove(at: indexPath.row)
           
            tableView .deleteRows(at: [indexPath],
                                  with: .automatic
                              )
        }
    
        
        return UISwipeActionsConfiguration(actions: [DeleteAction])
    }
   
}

    
    

