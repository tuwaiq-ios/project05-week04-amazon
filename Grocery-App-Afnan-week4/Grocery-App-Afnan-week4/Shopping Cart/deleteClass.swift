//
//  CheckoutVC.swift
//  Grocery-App-Afnan-week4
//
//  Created by Fno Khalid on 14/03/1443 AH.
//

import UIKit


class deleteProduct: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout, DataCollictionProtocol {
    
    
    @IBOutlet weak var collection: UICollectionViewFlowLayout!
    
    func deleteData(indx: Int) {
        _ = productslist.remove(at: indx)
        
        deleteCV.reloadData()
    }
    
 func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
  return productslist.count
 }
    
 func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
     
  let productCell = collectionView.dequeueReusableCell(withReuseIdentifier: "Delete-Products", for: indexPath) as! deleteCell
     
  productCell.indexPath = indexPath
  productCell.delegate = self
     
     _ = productslist[indexPath.item]
     
        return productCell
 }
    
    @IBOutlet weak var deleteCV: UICollectionView!
    
    
      override func viewDidLoad() {
           super.viewDidLoad()
     
         deleteCV.delegate = self
         deleteCV.dataSource = self
         deleteCV.reloadData()
 }
     override func viewWillAppear(_ animated: Bool) {
           super.viewWillAppear(animated)
                deleteCV.reloadData()
 }
    
 func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
            let screenWidth = view.bounds.size.width
                return CGSize(width: screenWidth/2, height: 321)
 }
    
 func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
           return 0
 }
 func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
           return 0
 }
    
}
