//
//  Data.swift
//  amazon
//
//  Created by mh on 11/03/1443 AH.
//

import UIKit
struct Product {
    var id: Int
    var name: String
    var price: Double
}



struct Cart {
    let coitem : Int
    let namec : String
    let price3 : Int
}

let arrcart = [Cart(
    coitem: 10,
    namec: "",
    price3: 10)
]

struct Det {
    let name : String
    let image : String
    let price : Double
    let spe : String
    
}
struct Item {
    let name : String
    let type : String
    let rating : Int
    let price1 : Int
    let logo : String
    let de : Array<Det>
}

let List = [
    Item(
        name: "apple airpods 2",
        type: "headphones",
        rating: 4,
        price1 : 699,
        logo: "9",
        de: [
            Det(
                name : "apple airpods 2",
                image : "9",
                price : 699,
                spe : "AirPods are wireless Bluetooth earbuds designed by Apple. ... On March 20, 2019, Apple released the second-generation AirPods, which feature the H1 chip, longer talk time, and hands-free  support. An optional wireless charging case which costs extra was added in the offerings."
            )
        ]
    ),
    Item(
        name: "apple airpods pro",
        type: "headphones",
        rating: 4,
        price1 : 899,
        logo: "10",
        de: [
            Det(
                name: "apple airpods pro",
                image: "10",
                price: 899,
                spe : "AirPods Pro have been designed to deliver Active Noise Cancellation for immersive sound, Transparency mode so you can hear your surroundings, and a customizable fit for all-day comfort. Just like AirPods, AirPods Pro connect magically to your iPhone or Apple Watch. And they're ready to use right out of the case."
            )
        ]
    ),
    Item(
        name: "iphone 12 pro",
        type: "phone",
        rating: 5,
        price1 : 3999,
        logo: "12",
        de: [
            Det(
                name: "iphone 12 pro",
                image:  "12",
                price: 3999,
                spe : "The Pro adds an extra telephoto camera lens, a LIDAR sensor, a little more RAM, twice the base storage, and a shiny stainless steel frame. All that will cost you $999, around $200 more than a base iPhone 12 at the carrier-subsidized price of $799."
            )
        ]
    ),
    Item(
        name: "apple watch",
        type: "apple watch",
        rating: 5,
        price1 : 1499,
        logo: "11",
        de: [
            Det(
                name: "apple watch",
                image:  "11",
                price: 1499,
                spe : "Apple Watch is a wearable smartwatch that allows users to accomplish a variety of tasks, including making phone calls, sending text messages and reading email. ... The Apple Watch iPhone app allows users to change settings, rearrange apps, choose notifications and download new apps from their iPhone."
            )
        ]
    ),
    Item(
        name: "console PS5",
        type: " control hand ",
        rating: 5,
        price1 : 250,
        logo: "13",
        de: [
            Det(
                name: "console PS5",
                image:  "13",
                price: 250,
                spe : "here's the new custom RDNA 2 GPU that can push 4K resolution at 120 frames per second, and the octa-core AMD Zen 2-based CPU with a 3.5GHz clock speed. ... The PS5 is also capable of outputting 8K resolution, however, we'll need to wait for a firmware update from Sony before it's able to do so."
            )
        ]
    ),
    Item(
        name: "PS5",
        type: "PS5",
        rating: 5,
        price1 : 2999,
        logo: "14",
        de: [
            Det(
                name: "PS5",
                image:  "14",
                price: 2999,
                spe : "The PlayStation 5 (PS5) is a home video game console developed by Sony Interactive Entertainment. ... The Digital Edition lacks this drive, allowing it to serve as a lower-cost model for those who prefer to buy games through digital download. The two variants were launched simultaneously."
            )
        ]
    ),
    Item(
        name: "coffe maker",
        type: "coffe make",
        rating: 5,
        price1 : 500,
        logo: "15",
        de: [
            Det(
                name: "coffe maker",
                image:  "15",
                price: 500,
                spe : "A coffee maker is an electric countertop appliance that brews hot coffee automatically. It consists of a hot plate, a carafe or glass coffee pot, filter basket, and water reservoir. ... Hot water riding on these rising bubbles creates upward lift that carries a small stream of boiling water to the top of the coffee maker."
            )
        ]
    ),
    Item(
        name: "coffe maker",
        type: "",
        rating: 5,
        price1 : 400,
        logo: "16",
        de: [
            Det(
                name: "coffe maker",
                image:  "16",
                price: 400,
                spe : "A coffee maker is an electric countertop appliance that brews hot coffee automatically. It consists of a hot plate, a carafe or glass coffee pot, filter basket, and water reservoir. ... Hot water riding on these rising bubbles creates upward lift that carries a small stream of boiling water to the top of the coffee maker"
            )
        ]
    ),
]

