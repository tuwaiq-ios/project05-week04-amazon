//
//  Model.swift
//  shopAp
//
//  Created by sally asiri on 15/03/1443 AH.
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
    
    Product(name: "Sportswear", image: UIImage(named:  "rrr") , summary: "Blouse and pants set", price: 250.5),
    Product(name: "sport clothes", image: UIImage(named:  "rr"), summary: "Gray Trousers and Blouse Set ", price: 200.5),
    Product(name: "black sportswear", image: UIImage(named:  "r"), summary: " Sports suit in black color Free size", price: 350.5),

    Product(name: "dnabl", image: UIImage(named:  "دنابل"), summary: "Dumbbells of three different weights", price: 100.5),
    Product(name: "walk", image: UIImage(named:  "سير"), summary: "Original Japanese made", price: 300.5),
    Product(name: "yoga mat", image: UIImage(named:  "بساط"), summary: "pink yoga mat", price: 80.5),
    Product(name: "training device", image: UIImage(named:  "جلسه"), summary: "Abdominal muscle trainer", price: 1500.5),
    Product(name: "corset set", image: UIImage(named:  "مشد"), summary: "body slimming corset", price: 200.7),
    Product(name: "magnetic belt", image: UIImage(named:  "ظهر"), summary: "Magnetic posture corrector belt", price: 300.8),
Product(name: "resistance training set", image: UIImage(named:  "طقم"), summary: "17 piece resistance training set ", price: 290)

]
