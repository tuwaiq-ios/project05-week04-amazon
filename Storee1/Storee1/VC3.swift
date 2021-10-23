//
//  VC3.swift
//  Storee1
//
//  Created by Me .. on 13/03/1443 AH.
//

import UIKit

var productInCart: Array<Mac> = []

class VC3: UIViewController,UITableViewDataSource,UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if productInCart.count > 0{
            return productInCart.count
        }else{
            return 0
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let pro = productInCart[indexPath.row]
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell2", for: indexPath) as! cell2
        
        cell.imagecell2.image = pro.image
        cell.desciption2.text = pro.description
       return cell

    }
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.dataSource = self
        tableView.delegate = self
    }
    func tableView(_ tableView: UITableView, trailingSwipeActionsConfigurationForRowAt indexPath: IndexPath) -> UISwipeActionsConfiguration? {
        
        let deleteAction = UIContextualAction(style: .destructive, title: "delete") { _,_,_ in

            productInCart.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath],with: .automatic)
    }
    return UISwipeActionsConfiguration(actions: [deleteAction])
 }
}
