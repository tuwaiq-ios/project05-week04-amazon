//
//  StoreVC.swift
//  TSAmazon
//
//  Created by Tsnim Alqahtani on 14/03/1443 AH.
//


import UIKit

class Cv1: UIViewController, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout {
    
    var searchProduct: [Product] = Products
    @IBOutlet weak var searchBar: UISearchBar!
    @IBOutlet weak var collectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        collectionView.dataSource = self
        collectionView.delegate = self
    }
}

extension Cv1: UICollectionViewDataSource,UISearchBarDelegate {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return searchProduct.count
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ClothesCell", for: indexPath) as! ProdectsCell
        
        cell.setup(with: searchProduct[indexPath.item])
        return cell
    
        
    }
    
    
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
        let data = searchProduct[indexPath.item]
        performSegue(withIdentifier: "1122", sender: data)
      }
    
      override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        super.prepare(for: segue, sender: sender)
        let vc2 = segue.destination as! VC2
        vc2.pr = sender as? Product
    }
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        print(searchText)
        if searchText.isEmpty {
            searchProduct = Products
        } else {
            searchProduct = Products.filter({onemac in
                return "\(onemac.title)".starts(with: searchText)
            })
        }
            self.collectionView?.reloadData()
}
    }
