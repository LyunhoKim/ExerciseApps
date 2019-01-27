//
//  FloatButtonsViewController.swift
//  FloatingButton
//
//  Created by Lyunho Kim on 27/01/2019.
//  Copyright © 2019 Lyunho Kim. All rights reserved.
//

import UIKit

class FloatButtonsViewController: UIViewController {

    
    @IBOutlet var btn1CenterY: NSLayoutConstraint!
    @IBOutlet var btn2CenterY: NSLayoutConstraint!
    @IBOutlet var btn3CenterY: NSLayoutConstraint!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        btn1CenterY.constant = 0
        btn2CenterY.constant = 0
        btn3CenterY.constant = 0
    }
    
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        UIView.animate(withDuration: 1, delay: 0, usingSpringWithDamping: 0.5, initialSpringVelocity: 0.5, options: .curveEaseOut,
       animations: {
            self.btn1CenterY.constant = 80
            self.btn2CenterY.constant = 160
            self.btn3CenterY.constant = 240
        
            // 애니메이션 상태를 그리기 위해서 반드시 필요
            self.view.layoutIfNeeded()
        }) { (completion) in
            // 애니메이션 완료 시 필요한 작업
        }
    }
    
    
    
    @IBAction func dismissButtons(_ sender: Any) {
        UIView.animate(withDuration: 0.3, delay: 0, usingSpringWithDamping: 0.8, initialSpringVelocity: 0.5, options: .curveEaseOut,
                       animations: {
                        self.btn1CenterY.constant = 0
                        self.btn2CenterY.constant = 0
                        self.btn3CenterY.constant = 0
                        
                        // 애니메이션 상태를 그리기 위해서 반드시 필요
                        self.view.layoutIfNeeded()
        }) { (completion) in
            self.dismiss(animated: false, completion: nil)
        }
    }
    
    

}
