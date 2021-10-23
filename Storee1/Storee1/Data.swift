//
//  Data.swift
//  Storee1
//
//  Created by Me .. on 12/03/1443 AH.
//

import UIKit

struct Mac {
    
    let title: String
    let image: UIImage!
    let price: Int
    let description: String
}

var macs : [Mac] = [
    Mac(title: "Lipstick", image: UIImage(named:"lp"), price: 90, description: "أحمر شفاة مرطب وغير لامع"),
    Mac(title: "Mascara", image: UIImage(named:"mas"), price: 120, description: "volume mascara"),
    Mac(title: "Loosepowder", image: UIImage(named:"lous"), price: 200, description: "highliting powder"),
    Mac(title: "Fixplus", image:UIImage(named: "fix"), price: 130, description: "makeup Fixing"),
    Mac(title: "Concealer", image: UIImage(named:"con"), price: 80, description: "correction cream"),
    Mac(title: "Powder", image: UIImage(named:"powd"), price: 150, description: "compact powder"),
    Mac(title: "Blush", image:UIImage(named:"plush"), price: 50, description: "plush powder"),
    Mac(title: "Lipstick", image: UIImage(named:"Lip"), price: 90, description: "water proof"),
    Mac(title: "Foundation", image: UIImage(named: "found"), price: 200, description: "full-cover foundation"),
    Mac(title: "Shadow", image: UIImage(named:"shad"), price: 200, description: "Eye shadow")
]

var searchMac = [String]()
