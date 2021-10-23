//
//  ViewController.swift
//  amazon
//
//  Created by Hassan Yahya on 12/03/1443 AH.
//

import UIKit

class VC1: UIViewController, UITableViewDelegate, UITableViewDataSource, UISearchBarDelegate {
    
    var searchedProduct: [Brand] = brandList
    
    @IBOutlet weak var searchBar: UISearchBar!
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return brandList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let brand = brandList[indexPath.row]
        let cell = tableView.dequeueReusableCell(withIdentifier: "ProdCell", for: indexPath
                                                 
        ) as! cell1
        
        cell.prodName.text = brand.name
        cell.prodLogo.image = UIImage(named: brand.logo)
        cell.prodType.text = brand.type
        
        return cell
    }
    @IBOutlet weak var PTV: UITableView!
    
    var searchedProducts : Array<Product> = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        PTV.delegate = self
        PTV.dataSource = self
        searchBar.delegate = self
    }
     func searchBar(_ searchBar: UISearchBar,textDidChange searchText: String){
      
        if searchText.isEmpty {
            brandList = searchedProduct
        }else{
            searchedProduct = brandList.filter({ oneProduct in
                return oneProduct.name.starts(with: searchText)
                
            })
    
        }
    }
    func searchBarSearchButtonClicked(_ searchBar: UISearchBar) {
        searchBar.resignFirstResponder()
        
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let prr = brandList[indexPath.row]
        
        performSegue(withIdentifier: "show_prodc", sender: prr )
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        super.prepare(for: segue, sender: sender)
        
        let vc2 = segue.destination as! VC2
        vc2.prodFromVC1 = sender as? Brand
        
    }
   

}









class Cart {
    
    var items : [Product] = []
}

var cart = Cart()
