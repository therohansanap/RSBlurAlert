//
//  ViewController.swift
//  RSBlurAlert
//
//  Created by therohansanap on 05/22/2018.
//  Copyright (c) 2018 therohansanap. All rights reserved.
//

import UIKit
import RSBlurAlert

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        let blurController = RSBlurAlertController()
        present(blurController, animated: true, completion: nil)
    }

}

