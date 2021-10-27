//
//  Data.swift
//  amazonApp project
//
//  Created by Ahmed Assiri on 17/03/1443 AH.
//


import UIKit

struct Product {
    
    let name : String
    let image : String
    let summary: String
    let price: String
}

var cart: Array<Product>  = []


var purchasedProducts : Array<Product> = []



var allProducts: Array<Product> = [
    
    Product(name: "laptop",
            image: "laptop",
            summary: "this laptop new and 2022",
            price: "5999SR"),
    Product(name: "chair",
            image: "chair",
            summary: "this chair new and 2022",
            price: "799SR"),
    Product(name: "book",
            image: "book",
            summary: "this book new and 2022",
            price: "59SR"),
    Product(name: "applewatch",
            image: "applewatch",
            summary: "this applewach new and 2022",
            price: "1699SR"),
    Product(name: "xbox",
            image: "xbox",
            summary: "this xbox new and 2022",
            price: "1200SR")
]


