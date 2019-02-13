//
//  PopupWindowViewController.swift
//  PopupLayout
//
//  Created by Lyunho Kim on 08/02/2019.
//  Copyright © 2019 Lyunho Kim. All rights reserved.
//

import UIKit

class PopupWindowViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func pushedClose(_ sender: Any) {
        self.dismiss(animated: false, completion: nil)
        
        
    }
}
