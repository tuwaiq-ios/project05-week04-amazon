//
//  ViewController.swift
//  Aziz.Amazon
//
//  Created by Abdulaziz on 14/03/1443 AH.
//

import UIKit

class storeVC: UIViewController,UICollectionViewDelegate,UICollectionViewDataSource, UICollectionViewDelegateFlowLayout,UISearchBarDelegate {
    
    @IBOutlet weak var SearchBar: UISearchBar!
    @IBOutlet weak var ProductsVC: UICollectionView!
    
    var searchedProducts: Array<Product> = allProducts
        
    override func viewDidLoad() {
        super.viewDidLoad()
        ProductsVC.dataSource = self
        ProductsVC.delegate = self
        SearchBar.delegate = self
    }
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        if searchText.isEmpty {
            searchedProducts = allProducts
        } else{
            searchedProducts = allProducts.filter({oneProduct in
                return oneProduct.name.starts(with: searchText)
                
            })
        }
        ProductsVC.reloadData()
        
    }
    func searchBarSearchButtonClicked(_ searchBar: UISearchBar) {
        searchBar.resignFirstResponder()
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        return searchedProducts.count
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let productCell = collectionView.dequeueReusableCell(withReuseIdentifier: "ProductCell", for: indexPath) as! ProductCell
        let product = searchedProducts[indexPath.row]
        productCell.setup(product: product)
        return productCell
        
    }
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let product = searchedProducts[indexPath.row]
        performSegue(withIdentifier: "show_product", sender: product)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let productVC  = segue.destination as! ProductVC
        productVC.selectedProduect = sender as? Product
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        
        searchedProducts = allProducts
        ProductsVC.reloadData()
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let screenwidth = view.bounds.size.width
        return CGSize(width: screenwidth/2, height: 314)
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 0
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 0
    }
    
    
}

