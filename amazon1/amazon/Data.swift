//
//  Data.swift
//  amazon
//
//  Created by m-alqahtani on 11/03/1443 AH.
//

import UIKit



struct Item {
    let name : String
    let price1 : String
    let logo : UIImage?
    let spe : String
}

var importing : Array<Item> = []
var cart : Array<Item> = []
var purchsedPr : Array<Item> = []


var List : Array<Item> = [
    Item(
        name: "Iphone 13",
        price1 : "5999",
        logo: UIImage(named: "iphone 13"),
        spe : "The Pro adds an extra telephoto camera lens, a LIDAR sensor, a little more RAM, twice the base storage, and a shiny stainless steel frame. All that will cost you $820 , around $200 more than a base iPhone 13 at the carrier-subsidized price of $611."
    ),
Item(
    name: "Iphone 12 pro max",
    price1 : "5499",
    logo: UIImage(named: "iphone pro max 13"),
    spe : "The Pro adds an extra telephoto camera lens, a LIDAR sensor, a little more RAM, twice the base storage, and a shiny stainless steel frame. All that will cost you $799 , around $200 more than a base iPhone 12 pro max at the carrier-subsidized price of $600."
),
Item(
    name: "Iphone 12",
    price1 : "3999",
    logo: UIImage(named: "11"),
    spe : "The Pro adds an extra telephoto camera lens, a LIDAR sensor, a little more RAM, twice the base storage, and a shiny stainless steel frame. All that will cost you $780 , around $200 more than a base iPhone 12 pro at the carrier-subsidized price of $580."
),
Item(
    name: "Iphone 12",
    price1 : "3999",
    logo: UIImage(named: "Image-1"),
    spe : "The Pro adds an extra telephoto camera lens, a LIDAR sensor, a little more RAM, twice the base storage, and a shiny stainless steel frame. All that will cost you $780 , around $200 more than a base iPhone 12 pro at the carrier-subsidized price of $580."

),
Item(
    name: "Iphone 12",
    price1 : "3499",
    logo: UIImage(named: "Image-2"),
    spe : "The Pro adds an extra telephoto camera lens, a LIDAR sensor, a little more RAM, twice the base storage, and a shiny stainless steel frame. All that will cost you $700, around $200 more than a base iPhone 12 at the carrier-subsidized price of $550."

),
Item(
    name: "Iphone 11",
    price1 : "2999",
    logo: UIImage(named: "iphone 11"),
    
    spe : "The Pro adds an extra telephoto camera lens, a LIDAR sensor, a little more RAM, twice the base storage, and a shiny stainless steel frame. All that will cost you $600, around $200 more than a base iPhone 11 at the carrier-subsidized price of $499."
),
Item(
    name: "Iphone xr",
    price1 : "3099",
    logo: UIImage(named: "iphone xr"),
    spe : "The Pro adds an extra telephoto camera lens, a LIDAR sensor, a little more RAM, twice the base storage, and a shiny stainless steel frame. All that will cost you $500, around $200 more than a base iPhone xr at the carrier-subsidized price of $455."

),
Item(
    name: "Iphone xs",
    price1 : "2899",
    logo: UIImage(named: "iphone xs"),
    spe : "The Pro adds an extra telephoto camera lens, a LIDAR sensor, a little more RAM, twice the base storage, and a shiny stainless steel frame. All that will cost you $599, around $200 more than a base iPhone xs at the carrier-subsidized price of $399."

),
]


