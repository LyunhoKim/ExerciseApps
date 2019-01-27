//
//  ViewController.swift
//  AutoLayout_CustomKeypad
//
//  Created by Lyunho Kim on 20/01/2019.
//  Copyright © 2019 Lyunho Kim. All rights reserved.
//

import UIKit

class ViewController: UIViewController, CustomKeypadDelegate {
    
    func deliverButtonValue(number: String) {
        var currentNumber: Int?
        var newNumber = Int(number)!
        
        
        // TextField에 comma가 있을 시 comma 제거
        if let curr = customTextField.text {
            currentNumber = Int(curr.replacingOccurrences(of: ",", with: ""))
            
        }
        
        if let hasNumber = currentNumber  {
            if number == "00" {
                newNumber = hasNumber * 100
            } else if number == "000" {
                newNumber = hasNumber * 1000
            }
        }
        
        let formatter = NumberFormatter()
        formatter.numberStyle = .decimal
        customTextField.text = formatter.string(from: NSNumber(value: newNumber))
    }
    
    @IBOutlet var customTextField: UITextField!
    @IBOutlet var standardTextFeild: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let customKeypad = UINib(nibName: "NumberKeypad", bundle: nil).instantiate(withOwner: nil, options: nil)[0] as! CustomKeypad
       
//        let customKeypad = Bundle.main.loadNibNamed("NumberKeypad", owner: nil, options: nil)
        customKeypad.delegate = self
        customTextField.inputView = customKeypad
        
        
        
        
        
    }


}

