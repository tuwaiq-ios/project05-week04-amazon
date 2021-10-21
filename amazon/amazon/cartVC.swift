//
//  itmes.swift
//  amazon
//
//  Created by Hassan Yahya on 12/03/1443 AH.
//

import UIKit

var productInCart: Array<Product> = []

class CartVC: UIViewController, UITableViewDelegate, UITableViewDataSource{
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
      if productInCart.count > 0{
          return  productInCart.count
      }else {
          return 0
      }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let pro = productInCart[indexPath.row]
        
        let cell = tableView.dequeueReusableCell(
          withIdentifier: "cell3",
             for: indexPath
         )as! cell3
        
        cell.name4.text = pro.name
        cell.image4.image = UIImage (named: pro.image)
        cell.price4.text = "\(pro.price)"
         return cell
        }
    @IBOutlet weak var tableView4: UITableView!
    var proo: Product?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView4.delegate = self
        tableView4.dataSource = self
    }
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        
        if editingStyle == .delete {
            productInCart.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .fade)        }
    }
}
