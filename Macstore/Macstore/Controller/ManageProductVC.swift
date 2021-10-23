//
//  ManageProductVC.swift
//  Macstore
//
//  Created by Me .. on 17/03/1443 AH.
//

import UIKit

class ManageProductVC: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var tableView: UITableView!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.dataSource = self
        tableView.delegate = self
                
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        tableView.reloadData()
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return macs.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! CartCell
        
        let product = macs[indexPath.row]
        cell.setup(prouduct: product)
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let proudct = macs[indexPath.row]
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let vc: ProductVC = storyboard.instantiateViewController(withIdentifier: "productDetails") as! ProductVC
        vc.selectedproduct = proudct
        vc.isManager = true
        navigationController?.pushViewController(vc, animated: true)
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 150
    }
    
    func tableView(_ tableView: UITableView, trailingSwipeActionsConfigurationForRowAt indexPath: IndexPath) -> UISwipeActionsConfiguration? {
        let deleteAction = UIContextualAction(style: .destructive, title: "Delete") {_,_,_ in
            macs.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .automatic)
        }
        let editAction = UIContextualAction(style: .normal, title: "Edit") {_,_,_ in
            // go to details
            let proudct = macs[indexPath.row]
            let storyboard = UIStoryboard(name: "Main", bundle: nil)
            let vc = storyboard.instantiateViewController(withIdentifier: "addEditProduct") as! AddEditProductVC
            vc.selectedproduct = proudct
            vc.index = indexPath.row
            self.navigationController?.pushViewController(vc, animated: true)
            
        }
        
        return UISwipeActionsConfiguration(actions: [deleteAction, editAction])
    }
    
    @IBAction func addProduct(_ sender: Any) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: "addEditProduct") as! AddEditProductVC
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
    

    

    
}

