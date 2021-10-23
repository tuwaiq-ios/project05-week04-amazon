//
//  ViewController.swift
//  Fruit
//
//  Created by PC on 12/03/1443 AH.
//

import UIKit

class ViewController: UIViewController,UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout,UISearchBarDelegate
{
    
    @IBOutlet weak var searchbar: UISearchBar!
    
   
    
@IBOutlet weak var collectionView: UICollectionView!
    var searchproducts : Array<Fruit> = fr

    override func viewDidLoad() {
        super.viewDidLoad()
        collectionView.delegate = self
        collectionView.dataSource = self
        searchbar.delegate = self
        // Do any additional setup after loading the view.
    }
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        if searchText.isEmpty{
            searchproducts = fr
        }
    else
    { searchproducts = fr.filter({oneFruit in return oneFruit.name.starts(with: searchText)})}
        
    collectionView.reloadData()
       // print(searchText)
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
     //   return fr.count
        return searchproducts.count
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "Cellfruit", for: indexPath) as! Cellfruit
        let fruit =  searchproducts[indexPath.row]
        cell.name.text = fruit.name
        cell.image.image = fruit.image
        cell.backgroundColor = UIColor.yellow
        return cell
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: self.view.frame.width * 0.49, height: self.view.frame.width * 0.45)
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 1
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 1
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        
    }
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let prod = pr[indexPath.row]
        performSegue(withIdentifier: "showfruit", sender: prod)
        
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        super.prepare(for: segue, sender: sender)
        
        var fruitshow = segue.destination as! desc
        fruitshow.p = sender as? product
        
    }
}
    

struct Fruit {
    var image : UIImage
    var name : String
}

var fr = [Fruit(image: UIImage(named: "موز66")!, name: "موز66"),
          Fruit(image: UIImage(named: "تفاح66")!, name: "تفاح66"),
          Fruit(image: UIImage(named: "فراوله66")!, name :"فراوله66"),
          Fruit(image: UIImage(named: "بطيخ66")!, name: "66بطيخ")
          ]


    


