//
//  Data.swift
//  Grocery-App-Afnan-week4
//
//  Created by Fno Khalid on 12/03/1443 AH.
//

import UIKit


var productInCart: Array<products> = [ ]

struct products {
    var photo: UIImage?
    var name: String?
    var price: Double
    var description: String
}

struct receipt {
    var orderNumber: String
    var time: Double
    var personName: String
    var location: String
}


var productslist: Array<products> = [
    
    products(photo:UIImage(named: "bread"),
            name: "Burger Bread",
            price: 4.5,
            description: "White Burger Bread"
            ),
          
    products(photo:UIImage(named: "toast"),
            name: "Toast Bread",
            price: 6.5,
            description: "White Toast Bread"),
                
    
    products(photo: UIImage(named: "feta"),
            name: "Feta Cheese",
            price: 9.78,
            description: "Al-maraie Feta Chesse"),
           
    
    products(photo: UIImage(named: "cheese"),
            name: "LaVash Cheese",
            price: 9.95,
            description: "Al-maraie Feta Chesse"),
    
    products(photo: UIImage(named: "banana"),
            name: "1-kg Banana",
            price: 9.95,
            description: "Amircan Banana"),
        
    
    products(photo: UIImage(named: "strawberry"),
            name: "Strawberry",
            price: 23.95,
             description: "Amiracan strawberry "),
    
    products(photo: UIImage(named: "orange"),
            name: "1-kg Orange",
            price: 9.95 ,
             description: "Egyption orange"),
    
    
    products(photo: UIImage(named: "leez"),
            name: "Leez Potato",
            price: 6.95,
             description: "170 g"),
    
    
    products(photo: UIImage(named: "chicken"),
               name: "Al-YOUM Chicken",
               price: 12.95,
              description: "1000 grams"),
    
    products(photo: UIImage(named: "water"),
            name: "Rest Water",
            price: 8.95,
             description: "set from 20 can"),
    
    
    products(photo: UIImage(named: "pepsi"),
            name: "Pepsi",
            price: 2.95,
            description: "1 Pepsi can "),
]


var receiptInformation: Array<receipt> = [
    receipt(orderNumber: "Your Order Number : GECA21083647457",
            time: 10-10-2021,
            personName: "Afnan Khalid",
            location: "Location: Abha, Al-Muruj District, Al-Mamsh street.")
]
