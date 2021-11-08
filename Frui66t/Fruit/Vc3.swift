//
//  Vc3.swift
//  Fruit
//
//  Created by PC on 13/03/1443 AH.
//

import UIKit
var productIntCart: Array<product> = []
class Vc3: UIViewController,UITableViewDataSource,UITableViewDelegate{
    
    @IBOutlet weak var tableview3: UITableView!
    
 
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        if productIntCart.count > 0 {
            return productIntCart.count
            
        }else {
            return 0
        }
       
    }
       
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
    
        let po = productIntCart[indexPath.row]
        

        let cell = tableView.dequeueReusableCell(withIdentifier: "cell3", for: indexPath) as! cell3
//
        cell.labelcell3.text = po.summry
        cell.labelcell2.text = "\(po.price)"
//        cell.labelcell2.text = "\(po.price)"
//        cell.image3.image = UIImage(named: po.image)
        
        cell.image3.image = po.image
        return cell
        
    }
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
       if editingStyle == .delete {
           productIntCart.remove(at: indexPath.row)
        tableView.deleteRows(at: [indexPath], with: .fade)
       }
       tableView.reloadData()
      }
    
    override func viewDidLoad() {
    super.viewDidLoad()
    tableview3.dataSource = self
    tableview3.delegate = self
    }
    
    @IBAction func adrsBtn(_ sender: Any) {
        performSegue(withIdentifier: "adrs", sender: sender)
    }
}
    
    
   
    
        
    

