//
//  AccountPageViewController.swift
//  Apatite
//
//  Created by Jonathan Andrei on 11/04/21.
//

import UIKit

class AccountPageViewController: UIViewController {

    let bgColor = AccountBackgroundColors()
    
    @IBOutlet var bgView: UIView!
    @IBOutlet weak var cardOne: UIView!
    @IBOutlet weak var cardTwo: UIView!
    @IBOutlet weak var SignOutButton: UIButton!
    @IBOutlet weak var accountAvatar: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
//        bgView.backgroundColor = UIColor.clear
//        var backgroundLayer = bgColor.gl
//        backgroundLayer?.frame = bgView.frame
//        bgView.layer.insertSublayer(backgroundLayer!, at: 0)
        
        accountAvatar.layer.shadowColor = UIColor.systemBlue.cgColor
        accountAvatar.layer.shadowOffset = CGSize(width: 0, height: 1)
        accountAvatar.layer.shadowRadius = 1.5
        accountAvatar.layer.shadowOpacity = 1
        accountAvatar.layer.masksToBounds = true
        accountAvatar.clipsToBounds = true
        accountAvatar.layer.cornerRadius = 60
        
        cardOne.layer.shadowColor = UIColor.black.cgColor
        cardOne.layer.shadowOffset = CGSize(width: 0, height: 1)
        cardOne.layer.shadowRadius = 1.5
        cardOne.layer.shadowOpacity = 0.3
        cardOne.layer.masksToBounds = false
        cardOne.layer.cornerRadius = 10
        
        cardTwo.layer.shadowColor = UIColor.black.cgColor
        cardTwo.layer.shadowOffset = CGSize(width: 0, height: 1)
        cardTwo.layer.shadowRadius = 1.5
        cardTwo.layer.shadowOpacity = 0.3
        cardTwo.layer.masksToBounds = false
        cardTwo.layer.cornerRadius = 10
        
        SignOutButton.layer.shadowColor = UIColor.black.cgColor
        SignOutButton.layer.shadowOffset = CGSize(width: 0, height: 1)
        SignOutButton.layer.shadowRadius = 1.5
        SignOutButton.layer.shadowOpacity = 0.3
        SignOutButton.layer.masksToBounds = false
        
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
