//
//  ViewController.swift
//  H-Amazon
//
//  Created by  HANAN ASIRI on 11/03/1443 AH.
//

import UIKit

var Market = [product]( )
var searching = false
var searchedProduct = [product]( )
let searchController = UISearchController(searchResultsController: nil)

class ViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource,
UICollectionViewDelegateFlowLayout, UISearchResultsUpdating, UISearchBarDelegate {
    
    func callSegueFromCell(Productindexpath: IndexPath) {
        performSegue(withIdentifier: "Update-Product", sender: Productindexpath)
      }
    
    
    func updateSearchResults(for searchController: UISearchController) {
        let searchText = searchController.searchBar.text!
        if !searchText.isEmpty
        {
         searching = true
         searchedProduct.removeAll()
         for product in productlist
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
         searchedProduct = productlist
        }
        collectionView.reloadData()
        func searchBarCancelButtonClicked(_senderBar: UISearchBar){
         searching = false
         searchedProduct.removeAll()
            collectionView.reloadData()
        }
       }
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
        collectionView.delegate = self
        collectionView.dataSource = self
        configureSearchController()
    
        }

    @IBOutlet var collectionView: UICollectionView!
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if searching{
              return searchedProduct.count
            }
            else
            {
              return productlist.count
            }
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "picCell", for: indexPath) as! Cell
        
        let Products = productlist[indexPath.row]
         cell.setupCell(product:Products)
        
        cell.imageAmz.image =  Products.photo
        cell.nameP.text = Products.name
        cell.priceP.text = "\(Products.price) SAR"
       
        if searching {
            cell.imageAmz.image = searchedProduct[indexPath.row].photo
            cell.nameP.text = searchedProduct[indexPath.row].name
             }
             else {
                cell.imageAmz.image =  productlist[indexPath.row].photo
                cell.nameP.text = productlist[indexPath.row].name
             }
        
        return cell
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
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let proudc = productlist[indexPath.row]
        
        performSegue(withIdentifier: "show-prodect", sender: proudc)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        super.prepare(for: segue, sender: sender)
        if segue.identifier == "Update-Product" {
            if let updatPage = segue.destination as? updata  {
              if let index = sender as? IndexPath {
                updatPage.indexpath = index
              }
             }
           }else {
           let vc2 = segue.destination as!Dis
           vc2.PR = sender as! product?
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
         searchController.searchBar.placeholder = "“search products by name”"
       }
    

}
