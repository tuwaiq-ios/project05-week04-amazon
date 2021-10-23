//
//  Receipt Class.swift
//  Grocery-App-Afnan-week4
//
//  Created by Fno Khalid on 17/03/1443 AH.
//

import UIKit

class Receipt: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    
    var indexpath: IndexPath!
    
func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    
    return receiptInformation.count
}

func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    let receiptCell = tableView.dequeueReusableCell(withIdentifier: "show-Receipt") as! ReceiptCell
    
    let receipt1 = receiptInformation[indexpath.row]
    
    receiptCell.OrderNumber.text = receipt1.orderNumber;
    receiptCell.personName.text = receipt1.personName
    receiptCell.time.text = "\(receipt1.time)";
    receiptCell.location.text = receipt1.location
    
    return receiptCell
    
}
    @IBOutlet weak var ReceiptTableView: UITableView!
    
    
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        ReceiptTableView.reloadData()
    
}
    var Re: receipt?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        ReceiptTableView.delegate = self
        ReceiptTableView.dataSource = self
        
        ReceiptTableView.reloadData()

}
}
