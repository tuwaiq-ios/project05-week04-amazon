//
//  Models.swift
//  PerfumesApplication
//
//  Created by Kholod Sultan on 16/03/1443 AH.
//

import UIKit


struct Product {
    var name :String
    var summary: String
    var price: String
    var image: UIImage
    var quantity: String
}


var cart: Array<Product> = []
var purchasedProducts: Array<Product> = []

var allproducts: Array<Product>=[
    Product(name: "Dolce & Gabbana", summary: "عطر خشبي عربي مناسب للرجال والنساء", price: "1500", image: UIImage(named: "per1")!, quantity: "10"),
    Product(name: "Boss Hugo", summary: "عطر حمضي من ازهار البرتقال نسائي", price: "500", image: UIImage(named: "per2")!, quantity: "4"),
    Product(name: "Chanel", summary: "عطر انثوي من خشب الصندل والفانيلا", price: "700", image: UIImage(named: "per3")!, quantity: "6"),
    Product(name: "Reborto Cavali", summary: "عطر زهري من البارغموت والخوخ واخشاب الكشمير الفانيلا", price: "550", image: UIImage(named: "per4")!, quantity: "2"),
    Product(name: "Olimpa", summary: "العنبر والعود والفانيلا وزهر البرتقال ", price: "500", image: UIImage(named: "per5")!, quantity: "0")
]


