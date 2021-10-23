//
//  Data.swift
//  NARS
//
//  Created by dmdm on 22/10/2021.
//
import UIKit

var cost : Double?

struct Makeup {
    var price: Int
    var image: UIImage?
    var description: String
    var name: String
    var rating: String
    
}

var makeups : [Makeup] = [
    Makeup(
        price: 263,
        image: UIImage(named: "F"),
        description: "Sheer Glow Foundation",
        name: "NARS",
        rating: "✰✰✰✰✰"
    ),
    
    Makeup(
        price: 186,
        image: UIImage(named: "C"),
        description: "Creamy Concealer",
        name: "NARS",
        rating: "✰✰✰✰✰"

    ),
    
    Makeup(
        price: 192,
        image: UIImage(named: "B"),
        description: "Liquid Blush",
        name: "NARS",
        rating: "✰✰✰✰✰"

    ),
    
    Makeup(
        price: 142,
        image: UIImage(named: "M"),
        description: "Climax Etreme Mascara",
        name: "NARS",
        rating: "✰✰✰✰✰"
    ),
    
    Makeup(
        price: 142,
        image: UIImage(named: "PS"),
        description: "Iconic Lipstick",
        name: "NARS",
        rating: "✰✰✰✰✰"
    ),
    
    Makeup(
        price: 159,
        image: UIImage(named: "S"),
        description: "Mini Eyeshadow Palette",
        name: "NARS",
        rating: "✰✰✰✰✰"
    ),
    
    Makeup(
        price: 246,
        image: UIImage(named: "CN"),
        description: "Contour Blush",
        name: "NARS",
        rating: "✰✰✰✰✰"
    )
    
]

var searchname = [String]()
