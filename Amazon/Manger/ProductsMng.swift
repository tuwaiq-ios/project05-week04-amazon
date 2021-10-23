//
//  EditMng.swift
//  Amazon
//
//  Created by ibrahim asiri on 17/03/1443 AH.
//

import UIKit

protocol DeleteCollCell {
    func deleteCell(index: Int)
}

class ProductsMng: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout, UISearchBarDelegate{
    
    var delegate: DeleteCollCell?
    var index: IndexPath?
    
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
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        
        if editingStyle == .delete {
            searchingFruit.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .fade)
        }
        
        
     }
    
}
