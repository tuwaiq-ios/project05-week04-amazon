//
//  Model.swift
//  Store
//
//  Created by MacBook on 15/03/1443 AH.
//

import UIKit


struct Product {
    let name:String
    let image:String
    let summary:String
    let price:String
}


var cart: Array<Product> = []
var purchaasedProducts: Array<Product> = []

var allProducts: Array<Product> = [
Product(name: "4 in 1 Wireless", image: "4in1wireless", summary: "Wireless Charging Station for Apple Products, Charging Stand for i-Phone", price: "$20.00"),
Product(name: "iPhone 13 Pro", image: "Green13pro", summary: "Silicone Case with MagSafe - Clover", price: "$49.00"),
Product(name: "iPhone 13s ", image: "AppleiPhone13ProColors", summary: "iPhone 13s hit the shelves ", price: "$99.00"),
Product(name: "Apple iPhone 12 Pro Max", image: "iphone12promax", summary: "Apple iPhone 12 Pro Max 256 GB", price: "$199.00"),
Product(name: "APPLE iPad Mini ", image: "APPLEiPadMini", summary: "APPLE iPad Mini 5 7.9-inch 64GB WiFi Only Space Grey", price: "$70.00"),

]




