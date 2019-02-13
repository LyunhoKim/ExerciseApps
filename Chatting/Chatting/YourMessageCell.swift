//
//  YourMessageCell.swift
//  Chatting
//
//  Created by Heejeong Lee on 13/02/2019.
//  Copyright © 2019 Lyunho Kim. All rights reserved.
//

import UIKit

class YourMessageCell: UITableViewCell {

    @IBOutlet weak var yourMessage: UITextView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
