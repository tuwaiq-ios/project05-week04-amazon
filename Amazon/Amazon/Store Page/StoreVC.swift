//
//  ViewController.swift
//  Amazon
//
//  Created by Fawaz on 14/03/1443 AH.
//

import UIKit

class StoreVC: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout, UISearchBarDelegate {
  
  @IBOutlet weak var productsVC: UICollectionView!
  @IBOutlet weak var searchBar: UISearchBar!
  
  var searchProducts: Array<Product> = allProducts
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    productsVC.delegate = self
    productsVC.dataSource = self
    searchBar.delegate = self
  }
  
  func searchBar(_searchBar: UISearchBar, textDidChange searchText: String){
    
    if searchText.isEmpty{
      searchProducts = allProducts
    }else{
      searchProducts = allProducts.filter({oneProducts in
        
        return oneProducts.name.starts(with: searchText)
      })
    }
  }
  
  
  func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
    return searchProducts.count
  }
  
  func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
    
    let productCell = collectionView.dequeueReusableCell(withReuseIdentifier: "ProductCell", for: indexPath) as! ProductCell
    
    let product = searchProducts[indexPath.row]
    productCell.setup(product: product)
    
    return productCell
  }
  func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
    
    let screenWidth = view.bounds.size.width - 25//بسبب اني نقصت من الكوليكشين فيو ١٠ من اليمين واليسيار
    
    return CGSize(width: screenWidth/2 , height: 315)
  }
  
  func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
    return 0
  }
  
  func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
    return 0
  }
}

