//
//  Model.swift
//  Amazon
//
//  Created by Fawaz on 14/03/1443 AH.
//

import Foundation
import UIKit

struct Product {
  
  let image: UIImage?
  let name: String
  let summary: String
  let price: String
}

var cart: Array<Product> = []
var purchasedProducts: Array<Product> = []
var allProducts: Array<Product> = [
  
  Product(
    image: UIImage(named: "am1"),
    name: "IPhone 13 Pro Max",
    summary: "جوال ابل ايفون ١٣ برو ماكس الجديد مع تطبيق فيس تايم 128 جيجا ازرق",
    price: "4700 ريال"
  ),
  
  Product(
    image: UIImage(named: "am2"),
    name: "Samsung S21",
    summary: "جوال سامسونج جلكسي اس ٢١ ثنائي الشريحه ذاكره تخزين 256 جيجا يدعم تقنيه 5G لون رمادي",
    price: "3000 ريال"
  ),
  
  Product(
    image: UIImage(named: "am3"),
    name: "Airpod Pro",
    summary: "سماعه ابل ايربود برو لون ابيض",
    price: "850 ريال"
  ),
  
  Product(
    image: UIImage(named: "am4"),
    name: "Power Bank 2000",
    summary: "باور بانك محمول من انكر بسعه 20000 مللي امبير في الساعه لون اسود",
    price: "200 ريال"
  ),
  
  Product(
    image: UIImage(named: "am5"),
    name: "Power Port",
    summary: "شاحن باور بورت من انكر شاحن جداري مناسب لاجهزه الماك والايباد واليفون ",
    price: "180 ريال"
  ),
  
  Product(
    image: UIImage(named: "am6"),
    name: "PS5 console",
    summary: "وحده تحكم دوال سينس لاسلكيه لجهاز PlayStation 5 لون ابيض",
    price: "300 ريال"
  ),
  
  Product(
    image: UIImage(named: "am7"),
    name: "PlayStation 5",
    summary: "جهاز تشغيل العاب الفديو الرقميه بنسخه رقميه لـ PlayStation 5",
    price: "3000 ريال"
  ),
  
  Product(
    image: UIImage(named: "am8"),
    name: "Spider Man",
    summary: "مارفلز سبايدر مان مايلز موراليس لـ PlayStation 5",
    price: "150 ريال"
  ),
  
  Product(
    image: UIImage(named: "am9"),
    name: "Returnal",
    summary: "لعبه ريترنال لـ PlayStation 5",
    price: "140 ريال"
  ),
  
  Product(
    image: UIImage(named: "am10"),
    name: "Hardisk",
    summary: "قرص صلب خارجي محمول ماي باسبورت من ويسترن ديحيتال بسعه 2 تيرا لون اسود",
    price: "450 ريال"
  ),
]
