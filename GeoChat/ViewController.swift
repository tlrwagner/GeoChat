//
//  ViewController.swift
//  GeoChat
//
//  Created by Joshua Wagner on 11/11/17.
//  Copyright © 2017 Joshua Wagner. All rights reserved.
//

import UIKit
import Alamofire
import SwiftyJSON
import FontAwesome_swift

class ViewController: UIViewController {
    @IBOutlet weak var label: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func buttonPressed(_ sender:Any){
        let image = String.fontAwesomeIcon(name: .envelopeO)
        label.text = image
//        self.view.backgroundColor = UIColor.red
//        Alamofire.request("https://localhost:5000")
//            .responseJSON{
//                response in
//                switch response.result{
//                case .success(let value):
//                    print(value)
//                    break
//                case .failure(let error):
//                    break
//                }
//        }
    }

}

