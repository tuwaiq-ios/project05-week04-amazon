//
//  Data.swift
//  H-Amazon
//
//  Created by  HANAN ASIRI on 12/03/1443 AH.
//

import UIKit

var ProductInCard: Array<product> = []

var purchasedProduct: Array<product> = []

struct product {
    let photo: UIImage!
    let name: String!
    let price: Double
    let discrption: String
    
}

var productlist = [
product(photo:UIImage(named: "AMZ1"),
        name: "iPhone",
        price: 43,
        discrption: "The latest version of the iPhone blue colo"),
      

product(photo: UIImage(named: "AMZ2"),
        name: "Earphone",
        price: 600,
        discrption: "Easy to use and high technology"),

product(photo: UIImage(named: "AMZ3"),
        name: "clothes",
        price: 233,
        discrption: "Fashionable clothes and beautiful colors" ),

product(photo: UIImage(named: "AMZ4"),
        name: "chair",
        price: 43,
        discrption: "Comfortable and versatile chair") ,

product(photo: UIImage(named: "AMZ5"),
        name: "lipton",
        price: 23,
        discrption: "The best kind of tea") ,

product(photo: UIImage(named: "AMAZ6"),
        name: "watch",
        price: 500,
        discrption: "Attractive color and great design" ),


product(photo:UIImage(named:  "AMAZ7"),
        name: "cover",
        price: 20,
        discrption: "cover for iphone،Protects from scratches"),

product(photo: UIImage(named: "AMZ8"),
        name: "sony",
        price: 43,
        discrption: "Easy to use and high technology")
          
]


struct card {
    let photo: String
    let name: String!
    let price: Double
    let Dis: String
}

