//
//  StoreVC.swift
//  amazonApp project
//
//  Created by Ahmed Assiri on 17/03/1443 AH.
//



import UIKit



class  StoreVC : UIViewController , UICollectionViewDelegate, UICollectionViewDataSource , UICollectionViewDelegateFlowLayout, UISearchBarDelegate {
   
    
    //

    @IBOutlet weak var productsVC: UICollectionView!
    
    @IBOutlet weak var searchBar: UISearchBar!
    //
    var searchedProducts: Array<Product> = allProducts
    
  
    
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        if searchText.isEmpty {
            searchedProducts = allProducts
        } else {
            searchedProducts = allProducts.filter({ oneProduct in
                return oneProduct.name.starts(with: searchText)
            })
        }
        productsVC.reloadData()
    }
    //
    
    
    func searchBarSearchButtonClicked(_ searchBar: UISearchBar) {
        searchBar.resignFirstResponder()
    }
    
    //
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return searchedProducts.count
    }
    //
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let productCell = collectionView.dequeueReusableCell(withReuseIdentifier: "productCell", for: indexPath) as! ProductCell
        
        let product = searchedProducts[indexPath.row]
        productCell.setup(product: product)
        
        return productCell
    }
    
    //
   func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
       let product = searchedProducts[indexPath.row]
        performSegue(withIdentifier: "show_product", sender: product)
    }
    
    

    //
  
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let screenwidth = view.bounds.size.width
        
      //  return CGSize(width: 100, height: 100)
        return CGSize(width: screenwidth/2, height: 321
        )
    }
    
//
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 0
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 0
    }
 
    //
    override func viewDidLoad() {
        super.viewDidLoad()
        
        productsVC.delegate = self
        productsVC.dataSource = self
         searchBar.delegate = self
        
    
    }
    
    
}
