//
//  data.swift
//  amazon
//
//  Created by Hassan Yahya on 12/03/1443 AH.
//


import UIKit

struct Brand {
    
    let name: String
    let type: String
    let logo: String
    let prods: Array<Product>
}

struct Product {
    let name: String
    let image: String
    let price: Double
}
//var searchedProducts: Array<Brand> = []
var brandList: Array<Brand> = [
    
    Brand(
        name: "Apple",
        type: "Electronics",
        logo: "apple",
        prods: [
            Product(
                name: "Iphone 11 Pro",
                image: "iphone11",
                price: 3999.0
            ),
            Product(
                name: "AirPods",
                image: "air",
                price: 666.5
            ),Product(
                name: "Apple Watch",
                image: "applew",
                price: 800.99
            )
            
        ]),
    
    Brand(
        name: "Samsung",
        type: "Electronics",
        logo: "sam",
        prods: [
            Product(
                name:"Samsung Note20",
                image: "note20",
                price: 4999.9
            ),Product(
                name:"Samsung Cleaner",
                image: "samC",
                price: 755.0
            ),Product(
                name:"Samsung TV 65inch",
                image: "samTV",
                price: 7900.0
            )
            
        ]
    ),
    Brand(
        name: "LG",
        type:"Electronics",
        logo: "lg",
        prods: [
            Product(
                name: "LG AC",
                image: "lg air",
                price: 1800.0
            ), Product(
                name: "LG TV 55inch",
                image: "lg TV",
                price: 5299.9
            ),
            Product(
                name: "LG HandyPhone",
                image: "lg h",
                price: 1800.0
            )
        ]
    )
]

