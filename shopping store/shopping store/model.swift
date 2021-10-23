//
//  model.swift
//  shopping store
//
//  Created by Maram Al shahrani on 17/03/1443 AH.
//

import UIKit

var cost : Double?

struct Product {
    var price: String
    var image: UIImage?
    var description: String
    var name: String
    
}
var cart: Array<Product> = []
var purchasedProducts: Array<Product> = []
var dproducts:Array<Product> = bags
var bags : [Product] = [
    Product(
        price: "399",
        image: UIImage(named: "bag1"),
        description: "Brouwn color, Made of natural leather",
        name: "Duffle"
    ),
    
    Product(
        price: "400",
        image: UIImage(named: "bag2"),
        description: "Beige color , 100% Polyurethane PU Leather ",
        name: "Saddle"
    ),
    
    Product(
        price: "299",
        image: UIImage(named: "bag3"),
        description: "grey color , 90% Tweed, 10% Polyurethan , Tweed ",
        name: "Hobo"
    ),
    
    Product(
        price: "199",
        image: UIImage(named: "bag4"),
        description: "Beige color , 100% Suede , Suede ",
        name: "Baguette"
    ),
    
    Product(
        price:" 599",
        image: UIImage(named: "bag5"),
        description: "Dark blue color , Made of natural leather",
        name: "Flap"
    ),
    
    Product(
        price: "299",
        image: UIImage(named: "bag6"),
        description: "Black color , 100% Polyurethane PU Leather ",
        name: "Quilted"
    ),
    
    Product(
        price: "399",
        image: UIImage(named: "bag7"),
        description: "Brouwn with Beige colors , 90% Tweed, 10% Polyurethan , Tweed",
        name: "Bucket"
    ),
    
    Product(
        price:" 99",
        image: UIImage(named: "bag8"),
        description: "Beige color , Made of natural leather ",
        name: "Satchel bag"
    ),
    
    Product(
        price: "180",
        image: UIImage(named: "bag9"),
        description: "Light Bluish green color , 100% Polyurethane PU Leather ",
        name: "Tote"
    ),
    
    Product(
        price: "699",
        image: UIImage(named: "bag10"),
        description: "White color ,Made of 100% Suede , Suede",
        name: "Yasmeen"
    )
    
]

var searchname = [String]()

