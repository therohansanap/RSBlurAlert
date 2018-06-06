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
    }

    @IBAction func showAlertTapped(_ sender: UIButton) {
        let blurAlert = RSBlurAlertController()
        blurAlert.alertTitle = "Attention"
        blurAlert.alertDetail = "Describe the alert to the user using this so that user gets some idea."
        present(blurAlert, animated: false, completion: nil)
   }
}

