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
    var prods: Array<Product>
}

struct Product {
    let name: String
    let image: UIImage?
    let price: Double
    let summary: String
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
                image: UIImage(named: "iphone11"),
                price: 3999.0,
                summary: ""
            ),
            Product(
                name: "AirPods",
                image: UIImage(named:"air"),
                price: 666.5,
                summary: ""
                
            ),Product(
                name: "Apple Watch",
                image: UIImage(named:"applew"),
                price: 800.99,
                summary: ""
                
            )
            
        ]),
    
    Brand(
        name: "Samsung",
        type: "Electronics",
        logo: "sam",
        prods: [
            Product(
                name:"Samsung Note20",
                image: UIImage(named:"note20"),
                price: 4999.9,
                summary: ""
            ),Product(
                name:"Samsung Cleaner",
                image: UIImage(named:"samC"),
                price: 755.0,
                summary: ""
            ),Product(
                name:"Samsung TV 65inch",
                image: UIImage(named:"samTV"),
                price: 7900.0,
                summary: ""
                
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
                image: UIImage(named:"lg air"),
                price: 1800.0,
                summary: ""
                
            ), Product(
                name: "LG TV 55inch",
                image: UIImage(named:"lg TV"),
                price: 5299.9,
                summary: ""

            ),
            Product(
                name: "LG HandyPhone",
                image: UIImage(named:"lg h"),
                price: 1800.0,
                summary: ""

            )
        ]
    )
]

