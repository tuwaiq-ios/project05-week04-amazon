//
//  VC3.swift
//  amazon
//
//  Created by m-alqahtani on 12/03/1443 AH.
//

import UIKit

class VC3 : UIViewController ,UITableViewDelegate , UITableViewDataSource{
    
    
    @IBOutlet weak var cartTV: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        cartTV.delegate = self
        cartTV.dataSource = self
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        cartTV.reloadData()
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return cart.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "123", for: indexPath
        ) as! Cell3
        
        let product = cart[indexPath.row]
        cell.setup(Item: product)
        return cell
    }
    
    func tableView(_ tableView: UITableView, trailingSwipeActionsConfigurationForRowAt indexPath: IndexPath) -> UISwipeActionsConfiguration? {
        
        let delete = UIContextualAction(
            style: .destructive,
            title: "Delete") { _, _, _ in
                cart.remove(at: indexPath.row)
                tableView.deleteRows(at: [indexPath], with: .automatic)
            }
        
        return UISwipeActionsConfiguration(actions: [delete])
    }
}

