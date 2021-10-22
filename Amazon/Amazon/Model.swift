//
//  Model.swift
//  Amazon
//
//  Created by alanood on 14/03/1443 AH.
//

import UIKit



struct Product{
    let name: String
    let price: String
    let image: String
}
var cart: Array<Product> = []
var purchasedProducts:Array<Product> = []


var allProducts: Array<Product> = [
Product(
    name: "milk",
    price: "15",
    image: "milk"
),
Product(
    name: "chesse",
    price: "12",
    image: "cheez"),

Product(
    name: "cream",
    price: "14",
    image: "cream"),
Product(
    name: "juice",
    price: "21",
    image: "juc"),
Product(
    name: "penut butter",
    price: "23",
    image: "pent"),
Product(
    name: "egg",
    price: "18",
    image: "egg"),
Product(
    name: "cheiken",
    price: "22",
    image: "che")
]


