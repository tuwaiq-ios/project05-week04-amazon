//
//  Model.swift
//  shopAp
//
//  Created by HANAN on 14/03/1443 AH.
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

var allProduct: Array<Product> = [
    
    Product(name: "ipone 13 Pro Max",
            image: UIImage(named:  "1") ,
            summary: "2022 Apple iPhone 13 Pro Max with FaceTime (256GB) - Gold",
            price: 5290),
    
    
    
Product(name: "Mac Book Pro",
        image: UIImage(named:  "2"),
        summary: "2022 Apple MacBook Pro with Apple M1 Chip (13-inch, 8GB RAM, 256GB SSD) - Space Grey",
        price: 6300),
    
Product(name: "Mac Book Air",
        image: UIImage(named:  "3"),
        summary: "2022 Apple MacBook Air with Apple M1 Chip (13-inch, 8GB RAM, 256GB SSD) - Space Grey",
        price: 6350),

Product(name: "Apple TV 4K (32GB)",
        image: UIImage(named:  "4"),
        summary: "Apple Original shows and movies from Apple TV+",
        price: 1200),

Product(name: "Apple iPad Pro",
        image: UIImage(named:  "5"),
        summary: "2021 Apple iPad Pro (11-inch, Wi-Fi, 2TB) - Silver (3rd Generation)",
        price: 4900),
    
Product(name: "ipone 13 Pro Max",
        image: UIImage(named:  "6"),
        summary: "2022 Apple iPhone 13 Pro Max with FaceTime (256GB) - pink",
        price: 4600),
    
Product(name: "ipone 13 Pro Max",
        image:UIImage(named:  "7"),
        summary: "2022 Apple iPhone 13 Pro Max with FaceTime (256GB) - purple",
        price: 5500),
        
Product(name: "Apple Watch",
        image:UIImage(named:  "8"),
        summary: "Apple Watch Series 6 (GPS, 44mm) - Space Grey Aluminium Case with Black Sport Band",
        price: 4970),
        
Product(name: "Apple watch ",
        image: UIImage(named:  "9"),
        summary: "Apple Watch Series 6 (GPS, 40mm) - Blue Aluminium Case with Deep Navy Sport Band",
        price: 2099),
        
Product(name: "Apple iPad Pro ",
        image: UIImage(named:  "10"),
        summary: "2021 Apple iPad Pro (11-inch, Wi-Fi, 2TB) - Silver (3rd Generation)",
        price: 6290)

]
