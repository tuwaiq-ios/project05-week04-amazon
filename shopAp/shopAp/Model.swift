//
//  Model.swift
//  shopAp
//
//  Created by MacBook on 14/03/1443 AH.
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
    
    Product(name: "Brown jacket", image: UIImage(named:  "p1") , summary: "Brown jacket", price: 290.5),
    Product(name: "Black jacket", image: UIImage(named:  "p2"), summary: "Black-white jacket for women", price: 300.5),
    Product(name: "Gray jacket", image: UIImage(named:  "p3"), summary: "Elegant gray jacket for men", price: 350.5),

    Product(name: "Ferre Milano Watch", image: UIImage(named:  "p5"), summary: "Ferre Milano Watch,gray blue", price: 1200.5),
    Product(name: "D Milano Watch", image: UIImage(named:  "p4"), summary: "D Milano Watch polycarbon,black", price: 900.5),
    Product(name: "Adidas sneakers", image: UIImage(named:  "p8"), summary: "Adidas sneakers,white", price: 600.5),
    Product(name: "Nike sneakers", image: UIImage(named:  "p9"), summary: "Nike sneakers,pink", price: 500.5),
    Product(name: "Apple AirPods ", image: UIImage(named:  "p12"), summary: "Apple AirPods headphones", price: 970.7),
    Product(name: "Apple watch ", image: UIImage(named:  "p11"), summary: "Apple watch series 7 ,off-white", price: 2099.8),
Product(name: "Power bank Anker ", image: UIImage(named:  "p13"), summary: "power bank Anker Portable charger 10000", price: 290)

]
