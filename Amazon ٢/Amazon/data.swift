////
//  data.swift
//  Amazon
//
//  Created by sara al zhrani on 11/03/1443 AH.
//

import UIKit



struct product {
    let photo: UIImage?
    let price:Double
    let name:String
    let details : String
    
}


var producetslist =  [
    product(photo:UIImage(named:"1"),
            price: 9.00,
            name: "pringles",
            details :"chips"),
    
    product(photo:UIImage(named:"2"),
            price: 4.00,
            name: "Lays",
            details :"chips"),
    
    product(photo:UIImage(named:"3"),
            price: 18.00,
            name: "Fitness corn",
            details :"corn"),
    
    
    product(photo:UIImage(named:"4"),
            price: 10.00,
            name: "Nesquik",
            details :"chocleat"),

    
    
    product(photo:UIImage(named:"5"),
            price: 8.00,
            name: "Nestle",
            details :"sweet"),
    
    product(photo:UIImage(named:"6"),
            price: 6.00,
            name: "Fitness chips",
            details :"chips"),
    
    product(photo:UIImage(named:"7"),
            price: 40.00,
            name: "Mackintosh",
            details :"sweet"),
    
    product(photo:UIImage(named:"8"),
            price: 1.00,
            name: "chewy",
            details :"sweet"),
    
    
    product(photo:UIImage(named:"9"),
            price: 2.00,
            name: "gelly",
            details :"sweet"),
    
    
    product(photo:UIImage(named:"10"),
            price: 2.50,
            name: "pepsi",
            details :"drinks" ),
    
    
    
    product(photo:UIImage(named:"11"),
            price: 2.50,
            name: "Mirinda",
            details :"drinks")]

                            

let myProducets = [ #colorLiteral(red: 0.1764705926, green: 0.4980392158, blue: 0.7568627596, alpha: 1), #colorLiteral(red: 0.1764705926, green: 0.01176470611, blue: 0.5607843399, alpha: 1), #colorLiteral(red: 0.5725490451, green: 0, blue: 0.2313725501, alpha: 1), #colorLiteral(red: 0.9254902005, green: 0.2352941185, blue: 0.1019607857, alpha: 1), #colorLiteral(red: 0.9529411793, green: 0.6862745285, blue: 0.1333333403, alpha: 1), #colorLiteral(red: 0.3411764801, green: 0.6235294342, blue: 0.1686274558, alpha: 1), #colorLiteral(red: 0.2392156869, green: 0.6745098233, blue: 0.9686274529, alpha: 1), #colorLiteral(red: 0.2196078449, green: 0.007843137719, blue: 0.8549019694, alpha: 1), #colorLiteral(red: 0.8078431487, green: 0.02745098062, blue: 0.3333333433, alpha: 1), #colorLiteral(red: 0.9372549057, green: 0.3490196168, blue: 0.1921568662, alpha: 1), #colorLiteral(red: 0.9607843161, green: 0.7058823705, blue: 0.200000003, alpha: 1), #colorLiteral(red: 0.4666666687, green: 0.7647058964, blue: 0.2666666806, alpha: 1), #colorLiteral(red: 0.2588235438, green: 0.7568627596, blue: 0.9686274529, alpha: 1), #colorLiteral(red: 0.3647058904, green: 0.06666667014, blue: 0.9686274529, alpha: 1), #colorLiteral(red: 0.8549019694, green: 0.250980407, blue: 0.4784313738, alpha: 1), #colorLiteral(red: 0.9686274529, green: 0.78039217, blue: 0.3450980484, alpha: 1), #colorLiteral(red: 0.5843137503, green: 0.8235294223, blue: 0.4196078479, alpha: 1), #colorLiteral(red: 0.4745098054, green: 0.8392156959, blue: 0.9764705896, alpha: 1), #colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 1), #colorLiteral(red: 0.9098039269, green: 0.4784313738, blue: 0.6431372762, alpha: 1), #colorLiteral(red: 0.9568627477, green: 0.6588235497, blue: 0.5450980663, alpha: 1), #colorLiteral(red: 0.9764705896, green: 0.850980401, blue: 0.5490196347, alpha: 1), #colorLiteral(red: 0.721568644, green: 0.8862745166, blue: 0.5921568871, alpha: 1), #colorLiteral(red: 0.3411764801, green: 0.6235294342, blue: 0.1686274558, alpha: 1),]

//
//struct Cart{
//    let photo:String
//    let name: String
//    let price: String
//}
var purchasedProduct: Array<product> = []
var arrycart: Array<product> = []
var prodouctIncart: Array<product> = []
    
