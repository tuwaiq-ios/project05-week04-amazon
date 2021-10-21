//
//  Model.swift
//  saraSaudAmazonApp4
//
//  Created by SARA SAUD on 3/14/1443 AH.
//

import UIKit

struct Product {
    
    let title: String
    let image: String
    let price: Double
    let description: String
}

let Products : [Product] = [
    Product(title: "Swift Programming", image: "s1", price: 34.49, description: "The Big Nerd Ranch Guide (Big Nerd Ranch Guides)..Through the authors' carefully constructed explanations and examples, you will develop an understanding of Swift grammar and the elements of effective Swift style Throughout the book, the authors share their insights into Swift to ensure that you understand the hows and whys of Swift and can put that understanding to use in different contexts After working through the book, you will have the knowledge and confidence  to develop your own solutions to a wide range of programming challenges using Swift."),
    Product(title: "Programing Book", image: "s2", price: 58.69, description: "Swift, Xcode, and Cocoa Basics, Move into iOS development by getting a firm grasp of its fundamentals, including the Xcode 12 IDE, Cocoa Touch, and the latest version of AppleÃ¢??s acclaimed programming language, Swift 5.3. With this thoroughly updated guide, youÃ¢??ll learn the Swift language, understand AppleÃ¢??s Xcode development tools, and discover the Cocoa framework  Become familiar with built-in Swift types Dive deep into Swift objects, protocols, and generics Tour the life cycle of an Xcode project  Learn how nibs are loaded  Understand CocoaÃ¢??s event-driven design Communicate with C and Objective-C In this edition, catch up on the latest iOS programming features: Multiple trailing closures Code editor document tabs New Simulator features Resources in Swift packages Logging and testing improvements And more! Once you master the fundamentals, youÃ¢??ll be ready to tackle the details of iOS app development with author Matt NeuburgÃ¢??s companion guide, Programming iOS 14."),
    Product(title: "iOS 14 Programming for Beginners", image: "s3", price: 38.24, description: "Get started with building iOS apps with Swift 5.3 and Xcode 12, 5th Edition"),
    Product(title: "Swift Cookbook", image: "s4", price: 39.99, description: "Over 60 proven recipes for developing better iOS applications with Swift 5.3, 2nd Edition"),
    Product(title: "Mastering iOS 14 Programming", image: "s5", price: 44.99, description: "Build professional-grade iOS 14 applications with Swift 5.3 and Xcode 12.4, 4th Edition"),
    Product(title: "Powder", image: "s1", price: 150, description: "compact powder"),
    Product(title: "Blush", image: "s2", price: 50, description: "plush powder"),
    Product(title: "Lipstick", image: "s3", price: 90, description: "water proof"),
    Product(title: "Foundation", image: "s5", price: 200, description: "full-cover foundation"),
    Product(title: "Shadow", image: "s1", price: 200, description: "Eye shadow")
]

var searchMac = [String]()
