//
//  Data.swift
//  Macstore
//
//  Created by Me .. on 17/03/1443 AH.
//
import UIKit

struct Product {
    
    let price: String
    let image: UIImage!
    let description: String
    let name: String
}
var cart: Array<Product> = []
var purchasedProducts: Array<Product> = []
var dproducts:Array<Product> = macs
var macs: [Product] = [
    
    Product(price: "90", image: UIImage(named:"lp"), description: "water proof", name: "Lipstick"),
    Product(price: "120", image: UIImage(named:"mas"), description: "volume mascara", name: "Mascara"),
    Product(price: "200", image: UIImage(named:"lous"), description: "highliting powder", name: "Loosepowder"),
    Product(price: "130", image: UIImage(named: "fix"), description: "makeup Fixing", name: "Fixplus"),
    Product(price: "80", image: UIImage(named:"con"), description: "correction cream", name: "Concealer"),
    Product(price: "150", image: UIImage(named:"powd"), description: "compact powder", name: "Powder"),
    Product(price: "50", image: UIImage(named:"plush"), description: "plush powder", name: "Blush"),
    Product(price: "90", image: UIImage(named:"Lip"), description: "water proof", name: "Lipstick"),
    Product(price: "200", image: UIImage(named: "found"), description: "full-cover foundation", name: "Foundation"),
    Product(price: "200", image: UIImage(named:"shad"), description: "Eye shadow", name: "Shadow")
]

var searchMac = [String]()
