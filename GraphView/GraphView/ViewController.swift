//
//  ViewController.swift
//  GraphView
//
//  Created by Lyunho Kim on 28/01/2019.
//  Copyright © 2019 Lyunho Kim. All rights reserved.
//

import UIKit


extension NSLayoutConstraint {
    
    func changeMultiplier(value: CGFloat) -> NSLayoutConstraint {
        
        // 현재 constranint 비활성화
        NSLayoutConstraint.deactivate([self])
        
        // 새로운 constraint 생성 - multiplier 외에 동일하게 생성
        let newConstraint = NSLayoutConstraint(item: self.firstItem, attribute: self.firstAttribute, relatedBy: self.relation, toItem: self.secondItem, attribute: self.secondAttribute, multiplier: value, constant: self.constant)
        
        newConstraint.priority = self.priority
        newConstraint.shouldBeArchived = self.shouldBeArchived
        newConstraint.identifier = self.identifier
        
        // 생성한 constratint 활성화
        NSLayoutConstraint.activate([newConstraint])
        
        return newConstraint
    }
}

class ViewController: UIViewController {
    
    
    @IBOutlet var graph1Height: NSLayoutConstraint!
    @IBOutlet var graph2Height: NSLayoutConstraint!
    @IBOutlet var graph3Height: NSLayoutConstraint!
    @IBOutlet var graph4Height: NSLayoutConstraint!
    @IBOutlet var graph5Height: NSLayoutConstraint!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    @IBAction func button1(_ sender: Any) {
        UIView.animate(withDuration: 0.5) {
            self.graph1Height = self.graph1Height.changeMultiplier(value: 0.5)
            self.graph2Height = self.graph2Height.changeMultiplier(value: 0.6)
            self.graph3Height = self.graph3Height.changeMultiplier(value: 0.7)
            self.graph4Height = self.graph4Height.changeMultiplier(value: 0.8)
            self.graph5Height = self.graph5Height.changeMultiplier(value: 0.9)
            


            self.view.layoutIfNeeded()
        }
        
    }
    
    
    @IBAction func button2(_ sender: Any) {
        UIView.animate(withDuration: 0.5) {
            self.graph1Height = self.graph1Height.changeMultiplier(value: 0.9)
            self.graph2Height = self.graph2Height.changeMultiplier(value: 0.8)
            self.graph3Height = self.graph3Height.changeMultiplier(value: 0.7)
            self.graph4Height = self.graph4Height.changeMultiplier(value: 0.6)
            self.graph5Height = self.graph5Height.changeMultiplier(value: 0.5)
            self.view.layoutIfNeeded()
        }
        
    }
    
    
}

