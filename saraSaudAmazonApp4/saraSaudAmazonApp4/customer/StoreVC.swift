//
//  StoreVC.swift
//  saraSaudAmazonApp4
//
//  Created by SARA SAUD on 3/14/1443 AH.
//

import UIKit
var showProduct: Array<Product> = []

class Cv1: UIViewController, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout,MyCustomCellDelegator {
    
    func callSegueFromCell(prodIndex: IndexPath) {
        performSegue(
            withIdentifier: "update_page",
            sender: prodIndex
        )
    }
    
    
    var searchProduct: [Product] = Products
    @IBOutlet weak var searchBar: UISearchBar!
    @IBOutlet weak var collectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        collectionView.dataSource = self
        collectionView.delegate = self
    }
}

extension Cv1: UICollectionViewDataSource,UISearchBarDelegate {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return searchProduct.count
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ClothesCell", for: indexPath) as! ProductsCell
        
        cell.setup(with: searchProduct[indexPath.item], indexPath: indexPath)
        cell.delegate = self
        return cell
    
    }
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
        
        let data = searchProduct[indexPath.item]
        performSegue(withIdentifier: "1122", sender: data)

      }
      override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        super.prepare(for: segue, sender: sender)
          if segue.identifier == "update_page" {
              let updatePage = segue.destination as! editProduct
              updatePage.indexPath = sender as? IndexPath
          } else {
        let vc2 = segue.destination as! VC2
        vc2.pr = sender as? Product
    }
      }
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        print(searchText)
        if searchText.isEmpty {
            searchProduct = Products
        } else {
            searchProduct = Products.filter({onebook in
                return "\(onebook.title)".starts(with: searchText)
            })
        }
            self.collectionView?.reloadData()
}
    //delete
    func tableView(_ tableView: UITableView, leadingSwipeActionsConfigurationForRowAt indexPath: IndexPath) -> UISwipeActionsConfiguration? {
        let deleteAction = UIContextualAction(style: .destructive , title: "Delete" ) { _,_,_ in
            
            showProduct.remove(at: indexPath.row)
            
            tableView.deleteRows(at: [indexPath], with:  .automatic)
        }
        return UISwipeActionsConfiguration(actions: [deleteAction])
    }
    }
     








