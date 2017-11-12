//
//  Tabbar.swift
//  GeoChat
//
//  Created by Joshua Wagner on 11/11/17.
//  Copyright © 2017 Joshua Wagner. All rights reserved.
//

import UIKit

class Tabbar: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.tabBar.tintColor = UIColor.white
        self.tabBar.barTintColor = UIColor.init(red: 0, green: 122/255, blue: 255/255, alpha: 1)
        // Do any additional setup after loading the view.
        setStyle()
    }
    
    func setStyle(){
        for tab in tabBar.items! as [UITabBarItem]{
            if tab.title == "Feed"{
                tab.image = UIImage.fontAwesomeIcon(name: .commentsO, textColor: UIColor.white, size: CGSize(width: 30, height: 30))
            }
            else if tab.title == "Groups"{
                tab.image = UIImage.fontAwesomeIcon(name: .users, textColor: UIColor.white, size: CGSize(width: 30, height: 30))
            }
            else{
                tab.image = UIImage.fontAwesomeIcon(name: .user, textColor: UIColor.white, size: CGSize(width: 30, height: 30))
            }
        }
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
