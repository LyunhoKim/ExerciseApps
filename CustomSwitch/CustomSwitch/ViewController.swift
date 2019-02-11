//
//  ViewController.swift
//  CustomSwitch
//
//  Created by Heejeong Lee on 06/02/2019.
//  Copyright © 2019 Lyunho Kim. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var switchView: UIView!
    @IBOutlet weak var switchButton: UIButton!
    @IBOutlet weak var ButtonConstraintX: NSLayoutConstraint!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // 둥글게 보이도록 처리
        self.switchButton.layer.cornerRadius = 25
        self.switchView.layer.cornerRadius = 25
        
    }

    @IBAction func switchTouched(_ sender: Any) {
        
        // 버튼 On, 위치 변경, 배경 뷰 색상 변경
        if ButtonConstraintX.constant == -25 {
            ButtonConstraintX.constant = 25
            self.switchView.backgroundColor = UIColor.blue
        // 버튼 Off
        } else {
            ButtonConstraintX.constant = -25
            self.switchView.backgroundColor = UIColor.lightGray
        }
        UIView.animate(withDuration: 0.3) {
            self.view.layoutIfNeeded()
        }
    }
    
}

