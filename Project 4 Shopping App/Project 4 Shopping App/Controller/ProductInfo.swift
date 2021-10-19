//
//  ProductInfo.swift
//  Project 4 Shopping App
//
//  Created by Eth Os on 12/03/1443 AH.
//

import UIKit


class ProductInfo: UIViewController {
    var product: Product?
    @IBOutlet weak var productimage: UIImageView!
    @IBOutlet weak var productName: UILabel!
    @IBOutlet weak var productPrice: UILabel!
    @IBOutlet weak var productCategory: UILabel!
    @IBOutlet weak var productSummery: UILabel!
    @IBOutlet weak var productQuantity: UILabel!
    @IBOutlet weak var isAddedImage: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        productimage.image = UIImage(named: product!.productPic)
        productName.text = product!.prodauctName
        productPrice.text = "Price: \(product!.prodauctPrice)"
        productQuantity.text = "Quantity: \(product!.productQuantity)"
        productCategory.text = product!.productSpecs
        productSummery.text = product!.productSummary
    }
    @IBAction func addToCartPressed(_ sender: Any) {
        let saveProName = product!.prodauctName
        let savedProPic = UIImage(named: product!.productPic)
        let savedProPrice = "Price: \(product!.prodauctPrice)"
        let itemInCart = Cart(cartProdImage: savedProPic, cartProdName: saveProName, cartProdPrice: savedProPrice)
        cartArray.insert(itemInCart, at: 0)
        
    }
}
