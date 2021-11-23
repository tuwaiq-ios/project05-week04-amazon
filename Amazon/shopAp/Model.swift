//
//  Model.swift
//  shopAp
//
//  Created by MacBook on 15/03/1443 AH.
//

import UIKit

struct Product {

    var name: String
    var image: UIImage!
    var summary: String
    var price: Double
}


var dProducts: Array<Product> = allProduct
var cart: Array<Product> = []

var purchasedProduct: Array<Product> = []

var allProduct : [Product] = [

    Product(name: "4 in 1 Wireless", image: UIImage(named:  "4in1wireless") , summary: "Wireless Charging Station for Apple Products, Charging Stand for i-Phone", price: 250.5),
    Product(name: "iPhone 13 Pro", image: UIImage(named:  "Green13pro"), summary: "Silicone Case with MagSafe - Clover ", price: 200.5),
    
    Product(name: "iPhone 13s", image: UIImage(named:  "AppleiPhone13ProColors"), summary: "iPhone 13s hit the shelves", price: 350.5),

    Product(name: "Apple iPhone 12 Pro Max", image: UIImage(named:  "iphone12promax"), summary: "Apple iPhone 12 Pro Max 256 GB", price: 100.5),
    
    Product(name: "APPLE iPad Mini", image: UIImage(named: "APPLEiPadMini"), summary: "APPLE iPad Mini 5 7.9-inch 64GB WiFi Only Space Grey", price: 300.5),
    
    Product(name: "Apple iPhone 12 Pro Max", image: UIImage(named:  "iphone12promax"), summary: "Apple iPhone 12 Pro Max 256 GB", price: 100.5),
    
    Product(name: "iPhone 13s", image: UIImage(named:  "AppleiPhone13ProColors"), summary: "iPhone 13s hit the shelves", price: 350.5),
    
    Product(name: "4 in 1 Wireless", image: UIImage(named:  "4in1wireless") , summary: "Wireless Charging Station for Apple Products, Charging Stand for i-Phone", price: 250.5),
    
    Product(name: "iPhone 13 Pro", image: UIImage(named:  "Green13pro"), summary: "Silicone Case with MagSafe - Clover ", price: 200.5),
    
    Product(name: "APPLE iPad Mini", image: UIImage(named: "APPLEiPadMini"), summary: "APPLE iPad Mini 5 7.9-inch 64GB WiFi Only Space Grey", price: 300.5),
   

]




