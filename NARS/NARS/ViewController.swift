//
//  ViewController.swift
//  NARS
//
//  Created by dmdm on 22/10/2021.
//


import UIKit

class ViewController: UIViewController, UICollectionViewDelegate,UICollectionViewDelegateFlowLayout,MyCustomCellDelegator {
    func callSegueFromCell(prodIndex: IndexPath) {
        performSegue(withIdentifier: "update_page", sender:prodIndex)
    }
    
    
    var searchmakeup: [Makeup] = makeups
    
    @IBOutlet weak var searchBar: UISearchBar!
    @IBOutlet weak var collectionView: UICollectionView!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        collectionView.dataSource = self
        collectionView.delegate = self
       
    }
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        searchmakeup = makeups
        collectionView.reloadData()
    }
    }
    


extension ViewController: UICollectionViewDataSource,UISearchBarDelegate{
    
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return searchmakeup.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "makeupcllectionViewcell", for: indexPath) as! MakeupcollectionViewcell
        
        cell.setup(with: searchmakeup[indexPath.item], indexPath: indexPath)
        cell.delegate = self
        
        return cell
        
       
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: self.view.frame.width*0.49, height:view.frame.width*0.45)

    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 1
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 0.1
    }
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
        let data = searchmakeup[indexPath.row]
        
        performSegue(withIdentifier: "makeupcllectionViewcell", sender: data)
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        super.prepare(for: segue, sender: sender)
        if segue.identifier == "update_page" {
            let updatePage = segue.destination as!EditProduct
            updatePage.indexPath = sender as? IndexPath
            
        }else{
            let vc2 = segue.destination as! VC2
            vc2.pr = sender as? Makeup
        }
      
}
  
    
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        
        if searchText.isEmpty {
            searchmakeup = makeups
        } else {
            searchmakeup = makeups.filter({ oneMakeup in
                return "\(oneMakeup.price)".starts(with: searchText)
            })
        }
        self.collectionView?.reloadData()
    }
}
