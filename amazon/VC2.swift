//
//  VC2.swift
//  amazon
//
//  Created by mh on 11/03/1443 AH.
//
import UIKit

class VC2 : UIViewController ,UITableViewDelegate , UITableViewDataSource{
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return FromVC1?.de.count ?? 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let menu = FromVC1!.de[indexPath.row]
        let cell = tableView.dequeueReusableCell(withIdentifier: "FoodCell", for: indexPath
        ) as! Cell2
        
        cell.Name2.text = menu.name
        cell.Image1.image = UIImage (named: menu.image)
        cell.price2.text = "\(menu.price)"
        cell.labels.text = menu.spe
        return cell
    }
    
    
    
    var FromVC1:Item?
    
    @IBOutlet weak var co: UILabel!
    
    @IBOutlet weak var menuTV: UITableView!
  
    
    @IBOutlet weak var restType: UILabel!
    

    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        
        
        menuTV.delegate = self
        menuTV.dataSource = self
    }
    
}
