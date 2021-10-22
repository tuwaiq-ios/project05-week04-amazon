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
  
  func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String){
    print(searchText)
    if searchText.isEmpty{
      searchProducts = allProducts
    }else{
      searchProducts = allProducts.filter({oneProducts in
        return oneProducts.name.starts(with: searchText)
      })
    }
    productsVC.reloadData()
  }
  
  func searchBarShouldEndEditing(_ searchBar: UISearchBar) -> Bool {
    searchBar.resignFirstResponder()
    return true
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
  
  func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
    let product = searchProducts[indexPath.row]
    performSegue(withIdentifier: "show", sender: product)
  }
  
  override func prepare(for Segue: UIStoryboardSegue, sender: Any?){
    super.prepare(for: Segue, sender: sender)
    let productVC = Segue.destination as! ProductVC
    
    productVC.selectedProduct = sender as? Product
  }
  
  func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
    
    let screenWidth = view.bounds.size.width - 25//بسبب اني نقصت من الكوليكشين فيو ١٠ من اليمين واليسيار
    
    return CGSize(width: screenWidth/2 , height: 315)
  }
  
  func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
    return 0
  }
  
  func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
    return 5
  }
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    productsVC.delegate = self
    productsVC.dataSource = self
    searchBar.delegate = self
  }
}
