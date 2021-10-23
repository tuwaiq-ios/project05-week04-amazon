//
//  Data.swift
//  iHerb
//
//  Created by Sara M on 12/03/1443 AH.
//


import UIKit



struct Product {
    
    let name: String
    let rating: String
    let logo: UIImage?
    let price: Int
    let state: String
   
}



var cart: Array<Product> = []
var purchasedProduct: Array<Product> = []


var productList: Array<Product> = [
    Product (
        name: "Moisturizing Cream,Very Dry, Sensitive Skin,(85g)",
        rating: "⭐️⭐️⭐️⭐️" ,
        logo: UIImage (named: "6"),
        price: 30,
        state: "InStock"),
   
         
    Product(
        name: "Fresh Breath Oral Rinse,Invigorating Icy Mint,(473ml)",
        rating: "⭐️⭐️⭐️",
        logo:  UIImage(named: "4"),
        price: 50,
        state: "InStock"),
   
    
    Product(
        name: "Arabic Coffee Scrub,(567g)",
        rating: "⭐️⭐️⭐️⭐️⭐️",
        logo: UIImage(named: "5"),
        price: 56,
        state: "InStock"),
   
    
    Product(
        name: "Daily Facial Cleanser, (237ml)",
        rating: "⭐️⭐️⭐️⭐️",
        logo: UIImage(named: "2"),
        price: 52,
        state: "InStock"),
   
  
    Product(
        name: "Thickening shampoo,Therapy,(414ml)",
        rating: "⭐️⭐️⭐️",
        logo: UIImage(named: "3"),
        price: 51,
        state: "InStock"),
   
    
    Product(
        name: "Solution,Sweet Almond Oil,(473ml)",
        rating: "⭐️⭐️⭐️⭐️",
        logo: UIImage(named: "1"),
        price: 42,
        state: "InStock")
]
   

