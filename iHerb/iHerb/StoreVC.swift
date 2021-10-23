//
//  ViewController.swift
//  iHerb
//
//  Created by Sara M on 12/03/1443 AH.
//

import UIKit

class StoreVC: UIViewController,
    UICollectionViewDelegate, UICollectionViewDataSource,UICollectionViewDelegateFlowLayout,
              UISearchBarDelegate, MyCustomCellDelegator {
   
    func callSegueFromCell(prodIndex: IndexPath) {
        performSegue(withIdentifier: "update_page", sender:prodIndex)
    }
    
    
    @IBOutlet weak var searchBar: UISearchBar!
    @IBOutlet weak var picCV: UICollectionView!
    
    var searchedProducts: Array<Product> = productList
   
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return searchedProducts.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
       
        let Products = searchedProducts[indexPath.item]
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "update_page", for: indexPath) as! StoreCell
        
        cell.setup(with: searchedProducts[indexPath.item], indexPath: indexPath)
        cell.delegate = self
        
        return cell
        
    }
    
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 0
        
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 0
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(
            width: self.view.frame.width * 0.45,
            height: 360
        )
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
        let product = productList[indexPath.item]
       
        performSegue(withIdentifier: "show_order",
                     sender: product )
    }
    
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        if searchText.isEmpty {
            searchedProducts = productList
        }else{
            searchedProducts = productList.filter({
                oneProduct in
                return oneProduct.name.starts(with: searchText)
            })
        }
        picCV.reloadData()
    }
  
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        super.prepare(for: segue, sender: sender)
        if segue.identifier == "update_page" {
            let updatePage = segue.destination as! EditeVC
            updatePage.indexPath = sender as? IndexPath
            
        }else{
            let ProductVC = segue.destination as! ProductVC
            ProductVC.productsFromViewController = sender as? Product
        }
      
}

    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        picCV.delegate = self
        picCV.dataSource = self
        searchBar.delegate = self
    }

    
    
    
    
}

