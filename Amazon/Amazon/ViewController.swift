//
//  ViewController.swift
//  Amazon
//
//  Created by alanood on 14/03/1443 AH.
//

import UIKit

class ViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout,UISearchBarDelegate, myCustomeCellDelegator{
    
    func callSegueFromCell(prodindexpath: IndexPath) {
        performSegue(withIdentifier: "update_page", sender:prodindexpath)
    }
    
    
   
    
    @IBOutlet weak var searchBar: UISearchBar!
    
    @IBOutlet weak var productVC: UICollectionView!
    
    var searchedProducts: Array<Product> = allProducts
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        productVC.delegate = self
        productVC.dataSource = self
        searchBar.delegate = self
    }
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        print(searchText)
        if searchText.isEmpty{
            searchedProducts = allProducts
        }else{
            searchedProducts = allProducts.filter({oneProducts in
                return oneProducts.name.starts(with: searchText)
            })
        }
        productVC.reloadData()
    }
 
    func searchBarSearchButtonClicked(_ searchBar: UISearchBar) {
        searchBar.resignFirstResponder()
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return searchedProducts.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let productCell = collectionView.dequeueReusableCell(withReuseIdentifier: "ProductCell", for: indexPath) as! productCell
        
        _ = searchedProducts[indexPath.row]
        productCell.setup(product: searchedProducts[indexPath.item], indexPath: indexPath)
        productCell.delegate = self 
        
        return productCell
    }
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let product = searchedProducts[indexPath.row]
        performSegue(withIdentifier: "show_product", sender: product)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        super.prepare(for: segue, sender: sender)
        if segue.identifier == "update_page" {
            let updatePage = segue.destination as! managerVC
            updatePage.indexPath = sender as? IndexPath
            
            
        }else{
            let productVC = segue.destination as! ProductVC
            productVC.selectedProduct = sender as? Product
            
        }
        
      
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        let screenWidth = view.bounds.size.width
        
        return CGSize(width: screenWidth/2, height: 90)
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 0
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 0
    }
    }
