//
//  MyMessageCell.swift
//  Chatting
//
//  Created by Lyunho Kim on 12/02/2019.
//  Copyright © 2019 Lyunho Kim. All rights reserved.
//

import UIKit

class MyMessageCell: UITableViewCell {

    @IBOutlet var myMessage: UITextView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
