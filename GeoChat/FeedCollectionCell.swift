//
//  FeedCollectionCell.swift
//  GeoChat
//
//  Created by Joshua Wagner on 11/11/17.
//  Copyright © 2017 Joshua Wagner. All rights reserved.
//

import UIKit
import Alamofire
import SwiftyJSON
import FontAwesome_swift

class FeedCollectionCell: UICollectionViewCell {
    
    @IBOutlet weak var view: UIView!
    @IBOutlet weak var textLabel: UILabel!
    
    @IBOutlet weak var userLabel: UILabel!
    @IBOutlet weak var upButton: UIButton!
    @IBOutlet weak var downButton: UIButton!
    @IBOutlet weak var scoreLabel: UILabel!
    
    override func awakeFromNib() {
        view.layer.cornerRadius = 2
        view.layer.borderColor = UIColor.lightGray.cgColor
        view.layer.borderWidth = 1
        
        upButton.setTitle("", for: .normal)
        downButton.setTitle("", for: .normal)
        
        upButton.setImage(UIImage.fontAwesomeIcon(name: .chevronUp, textColor: UIColor.blue, size: CGSize(width: 20, height: 20)), for: .normal)
        downButton.setImage(UIImage.fontAwesomeIcon(name: .chevronDown, textColor: UIColor.blue, size: CGSize(width: 20, height: 20)), for: .normal)
        scoreLabel.text = "0"
        
    }
    
    @IBAction func upButtonPressed(_ sender: Any) {
    }
    
}
