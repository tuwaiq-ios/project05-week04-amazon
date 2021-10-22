//
//  data.swift
//  Aziz.Amazon
//
//  Created by Abdulaziz on 14/03/1443 AH.
//

import UIKit

struct Product {
    let name: String
    let image: UIImage?
    let summary: String
    let price: String
}


var cart: Array<Product> = []
var purshesdProducts: Array <Product> = []

var allProducts: Array<Product> = [
    
    Product(name: "iPhone13",
            image: UIImage(named: "i13"),
            summary: "iPhone 13 Pro Max. The biggest Pro camera system upgrade ever. Super Retina XDR display with ProMotion for a faster, more responsive feel. Lightning-fast A15 Bionic chip. Durable design and the best battery life ever in an iPhone.",
            price: "4699.SR"),
    
    Product(name: "Airpods3",
            image: UIImage (named: "Image-1"),
            summary: "AirPods 3 are Apple's newest AirPods with more compact stem, redesigned contoured fit, Adaptive EQ, sweat resistance, spatial audio support, and more. Pre-order now, launches October 26.",
            price: "Pre-order(699.SR)"),
    
    Product(name: "Kindle",
            image:UIImage(named: "k1"),
            summary: "A Kindle is a small hand-held electronic device for reading books, which has been developed by online retailer Amazon. Rather as you download an iPod or MP3 player with music, you download books (via wireless technology) on to a Kindle and read them on it.",
            price: "349.SR"),
    
    Product(name: "Canon D5 mark III",
            image: UIImage(named: "C1"),
            summary:"The Canon EOS 5D is a 12.8 megapixel digital single-lens reflex (DSLR) camera body produced by Canon. ... The camera accepts EF lens mount lenses. The EOS 5D is notable for being the first full-frame DSLR camera with a standard body size (as opposed to the taller, double-grip professional camera body style).",
            price: "4299.SR"),
    
    Product(name: "Gaming Chair", image: UIImage(named: "Image-8"), summary: "A gaming chair is a type of chair designed for the comfort of gamers. They differ from most office chairs in having high backrest designed to support the upper back and shoulders. They are also more customizable: the armrests, back, lumbar support and headrest can all be adjusted for comfort and efficiency ", price: "800")
]
