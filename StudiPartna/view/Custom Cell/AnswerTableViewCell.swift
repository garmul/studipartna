//
//  AnswerTableViewCell.swift
//  StudiPartna
//
//  Created by Gary Mullings on 4/15/18.
//  Copyright © 2018 Gary Mullings. All rights reserved.
//

import UIKit

class AnswerTableViewCell: UITableViewCell {

    @IBOutlet weak var dataString: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
