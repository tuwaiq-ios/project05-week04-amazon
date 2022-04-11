//
//  CartTV.swift
//  H-Amazon
//
//  Created by  HANAN ASIRI on 13/03/1443 AH.
//

import UIKit



class CardTV : UIViewController, UITableViewDelegate,UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return ProductInCard.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let Cell2 = tableView.dequeueReusableCell(withIdentifier: "cardconnect", for:indexPath) as!  cardCell
        
        let carditems = ProductInCard[indexPath.row]
    
        Cell2.cardImage.image = carditems.photo
        Cell2.cardName.text = carditems.name
        Cell2.cardPrice.text = "\(carditems.price)"
        
        
        return Cell2
    }
    
    @IBOutlet var tableviewshoping: UITableView!
    
    var pp: product?
    override func viewDidLoad() {
        super.viewDidLoad()
 tableviewshoping?.delegate = self
 tableviewshoping?.dataSource = self
 tableviewshoping?.reloadData()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        reloadInputViews()
    }
    
    func tableView(_ tableView: UITableView, trailingSwipeActionsConfigurationForRowAt indexPath: IndexPath) -> UISwipeActionsConfiguration? {
        let deleteAction = UIContextualAction(style: .destructive, title: "Delete") { _, _, _ in            ProductInCard.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .automatic)
        }
        
        return UISwipeActionsConfiguration(actions:[deleteAction])
        
    }
    }

