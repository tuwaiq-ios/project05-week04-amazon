//
//  ViewController.swift
//  Store
//
//  Created by MacBook on 13/03/1443 AH.
//

import UIKit

class StoreVC: UIViewController,
                      UICollectionViewDataSource,
                      UICollectionViewDelegate,
                      UICollectionViewDelegateFlowLayout,
                      UISearchBarDelegate {

    @IBOutlet weak var searchBar: UISearchBar!
    @IBOutlet weak var productsCV: UICollectionView!
    
    var SearchedProducts: Array<Product> = allProducts
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
       
        
        productsCV.delegate = self
        productsCV.dataSource = self
        searchBar.delegate = self
    }
    
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        if searchText.isEmpty {
            SearchedProducts = allProducts
        }else {
            SearchedProducts = allProducts.filter({ oneProducts in
                return oneProducts.name.starts(with: searchText)
            })
        }
        //udate search
        productsCV.reloadData()
    }
    
    // searchbare when pressed in (done) didn't disappear so should do this func.
    func searchBarCancelButtonClicked(_ searchBar: UISearchBar) {
        searchBar.resignFirstResponder()
    }
    
    
    func textFieldShouldReturn(_ searchBar: UISearchBar) {
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return SearchedProducts.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
         
        let productsCell = collectionView.dequeueReusableCell(withReuseIdentifier: "productsCell", for: indexPath) as! productsCell
        
        let product = SearchedProducts [indexPath.row]// ****
        
        productsCell.setup(product: product)
        
        return productsCell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
        let product = SearchedProducts [indexPath.row] //نسخناها من فوق ****
       
        performSegue(withIdentifier: "show_product", sender: product) //السندر هو البرودكت الي نبي نرسله
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        super.prepare(for: segue, sender: sender)
       
        // نقصد ب let المتغير وليس الكلاس
        let productsCV = segue.destination as! productVC
        productsCV.selectedProduct = sender as? Product
        
    }
    
    
    
    // شكل التقسيمات في الكولكشن فيو
    
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let screenwidth = view.bounds.size.width
        return CGSize(width: screenwidth/2, height: 321)
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 0
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 0
    }
    
}


