//
//  Manger VC.swift
//  H-Amazon
//
//  Created by  HANAN ASIRI on 15/03/1443 AH.
//

import UIKit
class MangerVC: UIViewController,UIImagePickerControllerDelegate,
                UINavigationControllerDelegate {

    @IBOutlet var imagemanger: UIImageView!
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        let image = (info[.editedImage] ?? info[.originalImage]) as! UIImage
        imagemanger.image = image
        
        dismiss(animated: true)
    }

    @IBOutlet var tfname: UITextField!
  
    
    @IBOutlet var tfprice: UITextField!
    
    @IBOutlet var tfdescription: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        reloadInputViews()
    }
    
    @IBAction func addcard(_ sender: Any) {
        
        let picker = UIImagePickerController ()
        picker.allowsEditing = true
        picker.delegate = self
        present(picker, animated: true)
    }
    
    @IBAction func butadd(_ sender: Any) {
        
        productlist.append(product(photo: imagemanger.image, name: tfname.text,price: Double(tfprice.text ?? " ") ?? 0, discrption: tfdescription.text!))
}
    
    
    func tableView(_ tableView: UITableView, trailingSwipeActionsConfigurationForRowAt indexPath: IndexPath) -> UISwipeActionsConfiguration? {
        let deleteAction = UIContextualAction(style: .destructive, title: "Delete") { _, _, _ in            ProductInCard.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .automatic)
        }
        return UISwipeActionsConfiguration(actions:[deleteAction])
}
}
