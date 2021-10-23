//
//  ViewController.swift
//  Amazon
//
//  Created by sara al zhrani on 11/03/1443 AH.
//

import UIKit

var Market = [product]( )
var searching = false
var searchedProduct = [product]( )
let searchController = UISearchController(searchResultsController: nil)

class ViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout, UISearchResultsUpdating, UISearchBarDelegate, ManegarUpdating {
    
    @IBOutlet weak var Mycollectionview: UICollectionView!
 
    func cellSegueFromCell(prodIndex: IndexPath) {
       performSegue(withIdentifier: "show_update", sender:prodIndex )
    }

    
    
    func updateSearchResults(for searchController: UISearchController) {
        let searchText = searchController.searchBar.text!
        if !searchText.isEmpty
        {
           searching = true
            searchedProduct.removeAll()
            for product in producetslist
            {
                if product.name.lowercased().contains(searchText.lowercased())
                {
                    searchedProduct.append(product)
                }
          
            }
        }
        else
        {
            searching = false
            searchedProduct.removeAll()
            searchedProduct = producetslist
        }
        
        Mycollectionview.reloadData()
        func searchBarCancelButtonClicked(_senderBar: UISearchBar){
            searching = false
            searchedProduct.removeAll()
            Mycollectionview.reloadData()
            
        }
        
    }
    

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        if searching{
            
            return searchedProduct.count
        }
        else
        {
            return producetslist.count
        }
        
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! CellCollection
        let prouduct = producetslist[indexPath.row]
        cell.delegate = self
        cell.setupCell(product: prouduct, indexpath: indexPath)
        cell.picProductes.image = prouduct.photo
        cell.descriPtion.text = prouduct.name
        
        if searching{
          cell.picProductes.image  = searchedProduct[indexPath.row].photo
            cell.descriPtion.text = searchedProduct[indexPath.row].name
        }
        else{
            cell.picProductes.image = producetslist[indexPath.row].photo
            cell.descriPtion.text = producetslist[indexPath.row].name
            
        }
      
    
        return cell
    }
  
    

    override func viewDidLoad() {
        super.viewDidLoad()
        Mycollectionview.delegate = self
        Mycollectionview.dataSource = self
        configureSearchController( )
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        Mycollectionview.reloadData()
    }
    
    

    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: self.view.frame.width * 0.45, height: self.view.frame.width * 0.45)
      }
      func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 1
      }
      func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
       return 1
      }





    func  collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let items = producetslist[indexPath.row]

            performSegue(withIdentifier: "show_details", sender: items)

    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        super.prepare(for: segue, sender: sender)
        
        if segue.identifier == "show_update" {
            if let updatePage = segue.destination as? Updated {
                if let index = sender as? IndexPath {
                    updatePage.indexpath = index
                    
                }
            
            }
          
        } else{
            let vc2 = segue.destination as!SegueFroCel
            vc2.PROFromdis = sender as! product?
            
        }
    
        
        
}
    
    private func configureSearchController( )
    {
        searchController.loadViewIfNeeded()
        searchController.searchResultsUpdater = self
        searchController.searchBar.delegate = self
        searchController.obscuresBackgroundDuringPresentation = false
        searchController.searchBar.enablesReturnKeyAutomatically = false
        searchController.searchBar.returnKeyType = UIReturnKeyType.done
        self.navigationItem.searchController = searchController
        self.navigationItem.hidesSearchBarWhenScrolling = false
        definesPresentationContext = true
        searchController.searchBar.placeholder = "search product by name "
    }
}


