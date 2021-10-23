//
//  Data.swift
//  Amazon
//
//  Created by ibrahim asiri on 12/03/1443 AH.
//

import UIKit

struct Product {
    var name: String
    var imageP: UIImage!
    var price: Double
    var summary: String
}

var proudtList: [Product] =  [
    Product(name: "أناناس",imageP: UIImage(named: "انانس"), price:15 , summary: "أناناس طازج"),
    Product(name: "برتقال",imageP: UIImage(named: "برتقال"), price:15 , summary: "برتقال طازج"),
    Product(name: "تفاح",imageP: UIImage(named: "تفاح"), price:15 , summary: "تفاح طازج"),
    Product(name: "بطيخ",imageP: UIImage(named: "بطيخ"), price:30 , summary: "بطيخ من المزرعة طازج"),
    Product(name: "عنب",imageP: UIImage(named: "عنب"), price:25 , summary: "عنب طازج"),
    Product(name: "فراولة",imageP: UIImage(named: "فراولة"), price:15 , summary: "فراولة طازجه"),
    Product(name: "طماطم",imageP: UIImage(named: "طماط"), price:25 , summary: "طماطم طازجه"),
    Product(name: "كيوي",imageP: UIImage(named: "كيوي"), price:20 , summary: "كيوي طازج"),
    Product(name: "موز",imageP: UIImage(named: "موز"), price:12 , summary: "موز طازج"),
    Product(name: "سلة فواكة",imageP: UIImage(named: "سله"), price:70 , summary: "سلة فواكه مشكلة طازجة"),

]
