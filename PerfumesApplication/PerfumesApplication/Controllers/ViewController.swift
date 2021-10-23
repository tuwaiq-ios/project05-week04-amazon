//
//  ViewController.swift
//  PerfumesApplication
//
//  Created by Kholod Sultan on 16/03/1443 AH.
//

import UIKit

class ViewController: UIViewController ,UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout, UISearchBarDelegate {
    
    
    @IBOutlet weak var collectionView: UICollectionView!
    lazy var searchBar = UISearchBar(frame: CGRect.zero)
    var searchProduct: Array<Product> = allproducts
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        collectionView.delegate = self
        collectionView.dataSource = self
        
        searchBar.delegate = self
        searchBar.placeholder = "Search"
        navigationItem.titleView = searchBar

    }
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return searchProduct.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let productcell = collectionView.dequeueReusableCell(withReuseIdentifier: "123", for: indexPath) as! ProductsCell
        
        let proudct = searchProduct[indexPath.row]
        productcell.setup(product: proudct)
        
        return productcell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let proudct = searchProduct[indexPath.row]
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let vc: ProductVC = storyboard.instantiateViewController(withIdentifier: "productDetails") as! ProductVC
        vc.selectedproduct = proudct
        vc.isManager = false
        navigationController?.pushViewController(vc, animated: true)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let screenWidth = view.bounds.size.width
        return CGSize(width: screenWidth/2, height: 335)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 0
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 0
    }
    
    
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        if searchText.isEmpty {
            searchProduct = allproducts
        }else{
            searchProduct = allproducts.filter({ oneproduct in
                return oneproduct.name.starts(with: searchText)
            })
        }
        collectionView.reloadData()
    }
    
    
}


