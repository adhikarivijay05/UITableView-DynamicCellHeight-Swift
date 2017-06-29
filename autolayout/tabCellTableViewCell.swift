//
//  tabCellTableViewCell.swift
//  autolayout
//
//  Created by Vijay Adhikari on 29/06/2017.
//  Copyright © 2017 Vijay Adhikari. All rights reserved.
//

import UIKit

class tabCellTableViewCell: UITableViewCell {

    @IBOutlet weak var titleLbl: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
