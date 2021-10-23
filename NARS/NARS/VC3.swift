//
//  VC3.swift
//  NARS
//
//  Created by dmdm on 22/10/2021.
//
import UIKit

var ProductInCart:Array<Makeup> = []

class VC3:UIViewController,
          UITableViewDataSource,
          UITableViewDelegate{
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if ProductInCart.count > 0{
            return ProductInCart.count
        }else {
            return 0
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let pro = ProductInCart[indexPath.row]
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell2", for:indexPath) as! cell2
        
        cell.name2.text = pro.name
        cell.des2.text = pro.description
        cell.imagecell2.image =  pro.image
        
        return cell
        
    }
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
    }
    func tableView(_ tableView: UITableView, trailingSwipeActionsConfigurationForRowAt indexPath: IndexPath) -> UISwipeActionsConfiguration? {
        
        let deleteAction = UIContextualAction(
            style: .destructive,
            title: "Delete") { _, _, _ in
                ProductInCart.remove(at: indexPath.row)
                tableView.deleteRows(at: [indexPath], with: .automatic)
            }
        return UISwipeActionsConfiguration(actions: [deleteAction])
    }
    
}
