//
//  CustomKeypad.swift
//  AutoLayout_CustomKeypad
//
//  Created by Lyunho Kim on 24/01/2019.
//  Copyright © 2019 Lyunho Kim. All rights reserved.
//

import UIKit

protocol CustomKeypadDelegate {
    func deliverButtonValue(number: String)
}

class CustomKeypad: UIView {
    
    var delegate: CustomKeypadDelegate?

    @IBAction func numberTapped(_ sender: UIButton) {
        delegate?.deliverButtonValue(number: sender.titleLabel!.text!)
        
    }
    

}
