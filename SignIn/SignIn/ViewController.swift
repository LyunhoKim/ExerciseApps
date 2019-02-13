//
//  ViewController.swift
//  SignIn
//
//  Created by Lyunho Kim on 08/02/2019.
//  Copyright © 2019 Lyunho Kim. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet var emailTextField: UITextField!
    @IBOutlet var passwordTextField: UITextField!
    @IBOutlet var emailErrorLabel: UILabel!
    @IBOutlet var passwordErrorLabel: UILabel!
    
    var emailErrorConstraint: NSLayoutConstraint?
    var passwordErrorConstraint: NSLayoutConstraint?
    
    
    
    func isValidEmail(email: String?) -> Bool {
        
        guard email != nil else { return false }
        
        let regEx = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,}"
        
        let pred = NSPredicate(format:"SELF MATCHES %@", regEx)
        return pred.evaluate(with: email)
    }

    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // selector
        emailTextField.addTarget(self, action: #selector(editStatusChanged), for: UIControl.Event.editingChanged)
        passwordTextField.addTarget(self, action: #selector(editStatusChanged), for: UIControl.Event.editingChanged)
        
        // view의 높이에 대한 constraint
        emailErrorConstraint = emailErrorLabel.heightAnchor.constraint(equalToConstant: 0)
        passwordErrorConstraint = passwordErrorLabel.heightAnchor.constraint(equalToConstant: 0)
        
        // 첫 화면에서는 표시되지 않도록
        emailErrorConstraint?.isActive = true
        passwordErrorConstraint?.isActive = true
    }
    
    
    @objc func editStatusChanged(textField: UITextField) {
        
        
        if textField == emailTextField {
            if let hasEmail = emailTextField.text {
                if isValidEmail(email: hasEmail) == true {
                    if let hasHeightConstraint = emailErrorConstraint {
                        hasHeightConstraint.isActive = true
                    }
                } else {
                    if let hasHeightConstraint = emailErrorConstraint {
                        hasHeightConstraint.isActive = false
                    }
                }
            }
        } else if textField == passwordTextField {
            if let hasPasswordText = textField.text {
                if hasPasswordText.count < 8 {
                    if let hasHeightConstraint = passwordErrorConstraint {
                        hasHeightConstraint.isActive = false
                    }
                } else {
                    if let hasHeightConstraint = passwordErrorConstraint {
                        hasHeightConstraint.isActive = true
                    }
                }
            }
        }
        
        
        UIView.animate(withDuration: 0.2) {
            self.view.layoutIfNeeded()
        }
        
        
    }
    
    
    
    

}

