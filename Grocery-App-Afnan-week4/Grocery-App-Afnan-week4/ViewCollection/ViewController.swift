//
//  ViewController.swift
//  Grocery-App-Afnan-week4
//
//  Created by Fno Khalid on 11/03/1443 AH.
//

import UIKit

var Market = [products]( )
var searching = false
var searchedProduct = [products]( )
let searchController = UISearchController(searchResultsController: nil)



class ViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout, UISearchResultsUpdating,
                      UISearchBarDelegate, updateButtondelgate {
    
    func callSegueFromCell(Productindexpath: IndexPath) {
        performSegue(withIdentifier: "Update-Product", sender: Productindexpath)
    }
    
    

    
    func updateSearchResults(for searchController: UISearchController) {
        let searchText = searchController.searchBar.text!
        if !searchText.isEmpty
        {
          searching = true
          searchedProduct.removeAll()
          for products in productslist
          {
              if ((products.name?.lowercased().contains(searchText.lowercased())) != nil)
            {
              searchedProduct.append(products)
            }
          }
        }
        else
        {
          searching = false
          searchedProduct.removeAll()
          searchedProduct = productslist
        }
        CV.reloadData()
        func searchBarCancelButtonClicked(_senderBar: UISearchBar){
          searching = false
          searchedProduct.removeAll()
          CV.reloadData()
        }
      }
    
    
    
    @IBOutlet weak var CV: UICollectionView!
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if searching{
             return searchedProduct.count
           }
           else
           {
             return productslist.count
           }
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "productcell", for: indexPath) as! ProductCollectionViewCell
        let Products = productslist[indexPath.row]
       
        
        cell.imgproduct.image = Products.photo
        cell.nameproduct.text = Products.name
        cell.priceproduct.text = "\(String(describing: Products.price))"
        
        
        
        if searching{
            cell.imgproduct.image = searchedProduct[indexPath.row].photo
            cell.nameproduct.text = searchedProduct[indexPath.row].name
          }
          else{
              cell.imgproduct.image = productslist[indexPath.row].photo
              cell.nameproduct.text = productslist[indexPath.row].name
          }
        cell.setupCell(products: Products, indexpath: indexPath);
        cell.delegate = self
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didDeselectItemAt indexPath: IndexPath) {
        let product = searchedProduct[indexPath.row]
        performSegue(withIdentifier: "check-out", sender: product)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: self.view.frame.width * 0.45,  height: self.view.frame.width * 0.45)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 1
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 1
    }
    
    
    func  collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let proudc = productslist[indexPath.row]
        
        performSegue(withIdentifier: "show-descrebtion", sender: proudc)
    }

  override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        super.prepare(for: segue, sender: sender)
      if segue.identifier == "Update-Product" {
          let updatPage = segue.destination as! updateProducts
          updatPage.indexpath = sender as? IndexPath
      }else {
      
      let vc2 = segue.destination as!Dis
      vc2.PROfromdis = sender as! products?
        
    }
  }
    override func viewDidLoad() {
        super.viewDidLoad()
        CV.delegate = self
        CV.dataSource = self
        configureSearchController()
    

    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        CV.reloadData()
        searchedProduct = productslist
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
         searchController.searchBar.placeholder = "“search products by name”"
     }

}

