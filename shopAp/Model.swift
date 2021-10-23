//
//  AppDelegate.swift
//  shopAp
//
//  Created by Amal on 14/03/1443 AH.
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
    Product(name: "Xbox ", image: UIImage(named: "1") , summary: "SSD STORAGE: With Microsoft next-generation SSD", price: 2000.0),
    Product(name: "HP DeskJet", image: UIImage(named:  "2"), summary: "Even use the HP Smart app to print, scan, and copy from anywhere.", price: 700.0),
    Product(name: "iPad mouse ", image: UIImage(named:  "3"), summary: "Gorgeous 10.2-inch Retina display with True Tone", price: 3000.0),
    Product(name: "Logitech M171 Wireless Mouse", image: UIImage(named:  "4"), summary: " 2.4 GHz with USB Mini Receiver", price: 300.0),
    Product(name: "HP Laptop", image: UIImage(named:  "6"), summary: "HP Laptop -14-CF 2011NX-Celeron DDR-4GB, 1TB", price: 3000.0),
    Product(name: "Portable Laptop Stand", image: UIImage(named:  "5"), summary: "HOCAR Aluminum Adjustable Stand for iPad, MacBook ", price: 350.0),

    Product(name: "Apple AirPods Pro", image: UIImage(named:  "7"), summary: "Active Noise Cancellation for immersive sound ", price: 350.0),

]
