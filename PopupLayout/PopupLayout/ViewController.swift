//
//  ViewController.swift
//  PopupLayout
//
//  Created by Lyunho Kim on 08/02/2019.
//  Copyright © 2019 Lyunho Kim. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func popupWindow(_ sender: Any) {
        
        // StoryBaord 이름을 이용하여 객체 생성
        let popupStoryboard = UIStoryboard.init(name: "PopupWindow", bundle: nil)
        
        // StoryBoard 내에서 ViewController 이름으로 객체 생성
        let popupVC = popupStoryboard.instantiateViewController(withIdentifier: "popupWindow")
        
        // ViewController의 present style
        popupVC.modalPresentationStyle = .overCurrentContext
        
        self.present(popupVC, animated: false, completion: nil)
    }
    
}

