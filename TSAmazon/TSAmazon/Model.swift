//
//  Model.swift
//  TSAmazon
//
//  Created by Tsnim Alqahtani on 14/03/1443 AH.
//

import UIKit

struct Product {
    
    var title: String
     var image: UIImage?
    var price: Double
    var description: String
}

var Products : [Product] = [
    Product(title: "Mouse", image: #imageLiteral(resourceName: "9"), price: 180, description: "Logitech G502 HERO High Performance Wired Gaming Mouse, HERO 16K Sensor, 16,000 DPI, RGB, Adjustable Weights, 11 Programmable Buttons, On-Board Memory, PC / Mac - Black"),
    Product(title: "Smart Bracelet", image: #imageLiteral(resourceName: "17"), price: 899, description: "M3 Smart Bracelet Heart Rate Blood Pressure Monitor Smart Wristband Men Women Fitness Tracker Watch Life Waterproof"),
    Product(title: "TV screen", image: #imageLiteral(resourceName: "a11"), price: 2499, description: "Wisfor Mobile TV Stand, Tilt TV Floor Bracket Rolling TV Trolley on Wheels for 32 LCD LED Flat Screen Height Adjustable TV Cart Max VESA 600x400mm Loading Weight up to 30KG"),
    Product(title: "watch", image: #imageLiteral(resourceName: "a12"), price: 2600, description: "BENYAR Men's Business Watches Designer Fashion Stylish Good-Looking Luxury Men's Quartz Sports Watches Waterproof Tactical Military Casual Watches for Men Date Chronograph"),
    Product(title: "laptop", image: #imageLiteral(resourceName: "13"), price: 2897, description: "Acer Aspire 5 Slim Laptop, 15.6 inches Full HD IPS Display, AMD Ryzen 3 3200U, Vega 3 Graphics, 4GB DDR4, 128GB SSD, Backlit Keyboard, Windows 10 in S Mode, A515-43-R19L, Silver"),
    Product(title: "Ipad", image: #imageLiteral(resourceName: "14"), price: 3888, description: "2021 Apple iPad Pro (11-inch, Wi-Fi, 128GB) - Space Grey (3rd Generation"),
    Product(title: "iPhone", image: #imageLiteral(resourceName: "15"), price: 5889, description: "New Apple iPhone 13 Pro with FaceTime (128GB) - Sierra Blue"),
    Product(title: "AirPods", image: #imageLiteral(resourceName: "16"), price: 90, description: "Apple AirPods with Charging Case")

]

var searchmac = [String]()
