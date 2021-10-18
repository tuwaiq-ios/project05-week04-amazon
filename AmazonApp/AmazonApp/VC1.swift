//
//  ViewController.swift
//  AmazonApp
//
//  Created by SARA SAUD on 3/12/1443 AH.
//

import UIKit

class VC1: UIViewController , UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout{
    
    var arrProduct = [Product]()
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return arrProduct.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ProductCell", for: indexPath) as! ProductCollectionViewCell
        let product1 = arrProduct[indexPath.row]
        cell.setupCell(photo: product1.photo, name: product1.name, price: product1.price) 
        cell.backgroundColor = UIColor.lightText
        return cell

    }        //cell size

    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: self.view.frame.width*0.49, height: self.view.frame.height*0.45)
    
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 1
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 1
    }
    
    @IBOutlet weak var collectionV1: UICollectionView!
//    var arrProduct = [Product]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        collectionV1.delegate=self
        collectionV1.dataSource=self
        
        arrProduct.append(Product(photo: UIImage(named: "s1")!, name: "Swift Programming", price: 34.49))
        arrProduct.append(Product(photo: UIImage(named: "s2")!, name: "iOS 14 Programming Fundamentals with Swift", price: 58.69))
        arrProduct.append(Product(photo: UIImage(named: "s3")!, name: "iOS 14 Programming for Beginners", price: 38.24))
        arrProduct.append(Product(photo: UIImage(named: "s4")!, name: "Swift Cookbook", price: 39.99))
        arrProduct.append(Product(photo: UIImage(named: "s5")!, name: "Mastering iOS 14 Programming", price: 44.99))
     
      //   Do any additional setup after loading the view.
        
    
    }
    struct stor {
        let name :String
        let tybe :String
        let product : Array<Product>
    }
    struct Product{
        let photo : UIImage
        let name : String
        let price :Double

      //  let detales : string
    }

    @IBAction func addToCart(_ sender: UIButton) {
        //get the prodect id
        //add the product to the cart
    //desply message to user
        
    
    }
    
}

