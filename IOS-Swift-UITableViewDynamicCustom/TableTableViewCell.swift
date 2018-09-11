//
//  TableTableViewCell.swift
//  IOS-Swift-UITableViewDynamicCustom
//
//  Created by Pooya on 2018-09-10.
//  Copyright © 2018 Pooya. All rights reserved.
//

import UIKit

class TableTableViewCell: UITableViewCell {

    @IBOutlet weak var imageCell: UIImageView!
    @IBOutlet weak var titleLabel01: UILabel!
    @IBOutlet weak var textLabel02: UILabel!
        
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
