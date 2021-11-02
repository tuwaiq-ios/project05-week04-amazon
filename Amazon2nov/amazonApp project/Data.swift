//
//  Data.swift
//  amazonApp project
//
//  Created by Ahmed Assiri on 17/03/1443 AH.
//


import UIKit

struct Product {
    
    let name : String
    let image : UIImage?
    let summary: String
    let price: String
}

var cart: Array<Product>  = []


var purchasedProducts : Array<Product> = []



var allProducts: Array<Product> = [
    
    Product(name: "laptop",
            image: UIImage(named: "laptop"),
            summary: "this laptop new and 2022",
            price: "5999SR"),
    Product(name: "chair",
            image: UIImage(named: "chair"),
            summary: "this chair new and 2022",
            price: "799SR"),
    Product(name: "book",
            image: UIImage(named: "book"),
            summary: "this book new and 2022",
            price: "59SR"),
    Product(name: "applewatch",
            image: UIImage(named: "applewatch"),
            summary: "this applewach new and 2022",
            price: "1699SR"),
    Product(name: "xbox",
            image: UIImage(named: "xbox"),
            summary: "this xbox new and 2022",
            price: "1200SR")
]


