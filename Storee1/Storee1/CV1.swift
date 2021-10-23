//
//  CV1.swift
//  Storee1
//
//  Created by Me .. on 12/03/1443 AH.
//

import UIKit

class Cv1: UIViewController, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout, MyCustomCellDelegator{
    
    func callSegueFromCell(prodIndex: IndexPath) {
        performSegue(withIdentifier: "update_page", sender: prodIndex)
    }
    
    
    var searchMac: [Mac] = macs
    @IBOutlet weak var searchBar: UISearchBar!
    @IBOutlet weak var collectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        collectionView.dataSource = self
        collectionView.delegate = self
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        searchMac = macs
        collectionView.reloadData()
        
    }
}

extension Cv1: UICollectionViewDataSource,UISearchBarDelegate {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return searchMac.count
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ClothesCell", for: indexPath) as! ClothesCell
        
        cell.setup(with: searchMac[indexPath.item], indexPath: indexPath)
        cell.delegate = self
        return cell
        
    
    }
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
        let data = searchMac[indexPath.item]
        performSegue(withIdentifier: "1122", sender: data)
      }
    
      override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        super.prepare(for: segue, sender: sender)
          if segue.identifier == "update_page" {
              let updatePage = segue.destination as! EditProduct
              updatePage.indexPath = sender as? IndexPath
          }else{
        let vc2 = segue.destination as! VC2 
        vc2.pr = sender as? Mac
    }
      }
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        print(searchText)
        if searchText.isEmpty {
            searchMac = macs
        } else {
            searchMac = macs.filter({onemac in
                return "\(onemac.price)".starts(with: searchText)
            })
        }
            self.collectionView?.reloadData()
}
    }
     







