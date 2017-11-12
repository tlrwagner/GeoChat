//
//  GroupTableCell.swift
//  GeoChat
//
//  Created by Joshua Wagner on 11/12/17.
//  Copyright © 2017 Joshua Wagner. All rights reserved.
//

import UIKit

class GroupTableCell: UITableViewCell {
    
    @IBOutlet weak var groupLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
