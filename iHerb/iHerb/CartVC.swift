//
//  ViewController3.swift
//  iHerb
//
//  Created by Sara M on 14/03/1443 AH.
//


import UIKit

class CartVC: UIViewController, UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return cart.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cartCell = tableView.dequeueReusableCell(withIdentifier: "showCell", for: indexPath) as! CartCell
       
        
        let product = cart[indexPath.row]
        cartCell.setup(product: product)
        return cartCell
    }
    
    func tableView(_ tableView: UITableView, trailingSwipeActionsConfigurationForRowAt indexPath: IndexPath) -> UISwipeActionsConfiguration? {
       
        
        let deleteAcion = UIContextualAction(
         style: .destructive,
         title: "Delete") { _, _, _ in
           
            cart.remove(at: indexPath.row)
           
            tableView.deleteRows(at: [indexPath],
            with: .automatic)
        }
        return UISwipeActionsConfiguration(actions:
                [deleteAcion]
   ) }
    
    
    
    @IBOutlet weak var TableVC: UITableView!
    
    @IBAction func Checkout(_ sender: Any) {
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        TableVC.delegate = self
        TableVC.dataSource = self
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        TableVC.reloadData()
    }
}

class CartCell: UITableViewCell{
    
    @IBOutlet weak var imageCell: UIImageView!
    @IBOutlet weak var nameCell: UILabel!
    @IBOutlet weak var priceCell: UILabel!
    
    func setup(product: Product)  {
        
        imageCell.image =  product.logo
        nameCell.text = product.name
        priceCell.text = "\(product.price)"
        
    }
}
