//
//  MenuViewController.swift
//  Apatite
//
//  Created by Jessica Wienadi on 08/04/21.
//

import UIKit

class MenuViewController: UIViewController {

    @IBOutlet weak var menuCollectionView: UICollectionView!
    override func viewDidLoad() {
        super.viewDidLoad()
       menuCollectionView.dataSource = self
        menuCollectionView.delegate=self
        menuCollectionView.collectionViewLayout = UICollectionViewFlowLayout()

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
extension MenuViewController: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return menus.count
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "MenuCollectionViewCell", for: indexPath) as! MenuCollectionViewCell
//        cell.contentView.layer.cornerRadius = 10
//        cell.contentView.layer.borderWidth = 1.0
//
//        cell.contentView.layer.borderColor = UIColor.lightGray.cgColor
//        cell.contentView.layer.masksToBounds = true
//
//        cell.layer.shadowColor = UIColor.gray.cgColor
//        cell.layer.shadowOffset = CGSize(width: 0, height: 2.0)
//        cell.layer.shadowRadius = 2.0
//        cell.layer.shadowOpacity = 1.0
//        cell.layer.masksToBounds = false
//        cell.layer.shadowPath = UIBezierPath(roundedRect:cell.bounds, cornerRadius:cell.contentView.layer.cornerRadius).cgPath
    
        cell.setup(with: menus[indexPath.row])
       
               
        
        return cell
    }
    
}
extension MenuViewController: UICollectionViewDelegateFlowLayout {
func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
return CGSize(width: 130, height: 190)
    }
}
extension MenuViewController: UICollectionViewDelegate {
func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
print(menus[indexPath.row].name)
    }
}
