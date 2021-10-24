////
////  shopping Cart.swift
////  Grocery-App-Afnan-week4
////
////  Created by Fno Khalid on 12/03/1443 AH.
////
//
//import UIKit
//
//class Cart: UIViewController {
//
//    func getDatabaseRecords() {
//
//        let db = productslist.count
//               //  Empty the array
//        productslist = []
//
//        db. ("ProductCollectionViewCell").whereField("Product", isEqualTo: product).getDocuments { (snapshot, error) in
//                    if let error = error {
//                        print(error)
//                        return
//                    } else {
//                        for document in snapshot!.documents {
//                            let data = document.data()
//                            let newEntry =
//                            product(
//                                productphoto:data["bread"] as! String,
//                                productName: data["Burger Bread"] as! String,
//                                productDescription: data["White Burger Bread"] as! String,
//                                priceproduct: data["price"] as! Double
//                            )
//
//                            self.product.append(newEntry)
//                        }
//                    }
//                    DispatchQueue.main.async {
//                     //  self.datas = self.filteredData
//                       self.tableView.reloadData()
//                    }
//                }
//            }
//
//}
