//
//  ViewController.swift
//  FloatingButton
//
//  Created by Lyunho Kim on 27/01/2019.
//  Copyright © 2019 Lyunho Kim. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let floatButtonsVC = segue.destination as! FloatButtonsViewController
        
        // 현재 VC를 다음 VC의 background에서 보이도록 표시
        floatButtonsVC.modalPresentationStyle = .overCurrentContext
    }


}

