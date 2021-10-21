//
//  VC1.swift
//  amazon
//
//  Created by mh on 11/03/1443 AH.
//

import UIKit
var productInCart: Array<Product> = []
class VC1: UIViewController , UICollectionViewDelegate, UICollectionViewDataSource , UICollectionViewDelegateFlowLayout , UISearchBarDelegate {
    var searchProduct: [Cart] = arrcart
    @IBOutlet weak var search: UISearchBar!
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return productInCart.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let re = List[indexPath.row]
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "RestCell", for: indexPath
        ) as! Cell1
        
        cell.logop.image = UIImage(named: re.logo)
        cell.lName.text = re.name
        cell.price1.text = "\(re.price1)"
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 0
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 0
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        let screenwidth = view.bounds.size.width
        
        //return CGSize(width: 100, height: 100)
        return CGSize(width: screenwidth / 2, height: screenwidth / 2 )    }
    
    
    
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
        let rest = List[indexPath.row]
        performSegue(withIdentifier: "show_menu", sender:rest
        )
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        super.prepare(for: segue, sender: sender)
        
        let v2 = segue.destination as! VC2
        v2.FromVC1 = sender as? Item
    }
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        if searchText.isEmpty
        {
            searchProduct = arrcart
        }
        else {
            searchProduct = arrcart.filter({oneCart in return "\(oneCart.price3)".starts(with: searchText)
                
            })
            
              }
        
    }
    
    @IBAction func addc(_ sender: UIButton) {
        
        
    }
    
    
    
    @IBOutlet weak var picC: UICollectionView!

    override func viewDidLoad() {
        super.viewDidLoad()
        // picsflowlayot.itemSize = CGSize (width: 100, height: 100)
        
        
        //    picC.collectionViewLayout
        picC.delegate = self
        picC.dataSource = self
        // Do any additional setup after loading the view.
        
    }
    
    
}
