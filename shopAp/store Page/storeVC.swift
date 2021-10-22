//
//  ViewController.swift
//  shopAp
//
//  Created by Amal on 14/03/1443 AH.
//

import UIKit

class storeVC: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout, UISearchBarDelegate,MyCustomCellDelegator
{
    func callSegueFromCell(prodIndex: IndexPath) {
        performSegue(withIdentifier: "update_page", sender: prodIndex)
    }
  
    @IBOutlet weak var searchBar: UISearchBar!
    @IBOutlet weak var productsCV: UICollectionView!
    
    var searchProducts: Array<Product> = allProduct
    override func viewDidLoad() {
        super.viewDidLoad()
        
        productsCV.delegate = self
        productsCV.dataSource = self
        searchBar.delegate = self
    }
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        searchProducts = allProduct
        productsCV.reloadData()

    }
     
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        if searchText.isEmpty {
            searchProducts = allProduct
        } else {
            searchProducts = allProduct.filter({ oneProduct in
                return oneProduct.name.starts(with: searchText)
            })
        }
        productsCV.reloadData()
    }
    func searchBarCancelButtonClicked(_ searchBar: UISearchBar) {
        searchBar.resignFirstResponder()
    }
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return searchProducts.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let productCell = collectionView.dequeueReusableCell(withReuseIdentifier: "productCell", for: indexPath) as! productCell
    
        productCell.setup(with: searchProducts[indexPath.item] , indexPath: indexPath)
        productCell.delegate = self
        return productCell
        
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let product = searchProducts[indexPath.item]
        performSegue(withIdentifier: "show_product", sender: product)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        super.prepare(for: segue, sender: sender)
        if segue.identifier == "update_page" {
            let updatePage = segue.destination as! EditProduct
            updatePage.indexPath = sender as? IndexPath
        }
        else {
        let productVC = segue.destination as! productVC
        productVC.selectedProduct = sender as? Product
            }
        }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        let screenWidth = view.bounds.size.width
      return CGSize(width: screenWidth/2, height: 321)
    }

    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 0
    }
    
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 0
    }
    
}

