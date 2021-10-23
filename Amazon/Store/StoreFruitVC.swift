//
//  ViewController.swift
//  Amazon
//
//  Created by ibrahim asiri on 12/03/1443 AH.
//

import UIKit

class StoreFruitVC: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout, UISearchBarDelegate{
    
    
    var searchingFruit: Array<Product> = proudtList
    
    @IBOutlet weak var searchBar: UISearchBar!
    
    @IBOutlet weak var collectionView: UICollectionView!
    override func viewDidLoad() {
        super.viewDidLoad()
        collectionView.delegate = self
        collectionView.dataSource = self
        //        searchBar.delegate = self
        
    }
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return searchingFruit.count
        
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "fruitsCell", for: indexPath) as! FruitCVCell
        
        let prod = searchingFruit[indexPath.row]
        
        cell.fruitName.text = prod.name
        cell.fruitImg.image = prod.imageP
        cell.backgroundColor = UIColor.orange
        
        return cell
    }
    //Func to control in cell size
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: self.view.frame.width * 0.49, height: self.view.frame.width * 0.45)
    }
    //Func to determine distances between cells
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 1
    }
    //Func to determine distances between rows
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 1
    }
    
    
    //Func to try search !
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        if searchText.isEmpty {
            searchingFruit = proudtList
        }
        else {
            searchingFruit = proudtList.filter({ oneFruite in
                return oneFruite.summary.starts(with: searchText)
            })
        }
        collectionView.reloadData()
    }
    
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let prodL = proudtList[indexPath.row]
        performSegue(withIdentifier: "products", sender: prodL)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        super.prepare(for: segue, sender: sender)
        
        let fruitProd = segue.destination as! Products
        fruitProd.prod = sender as? Product
    }
    
}







