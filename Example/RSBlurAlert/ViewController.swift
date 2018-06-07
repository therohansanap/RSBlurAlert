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

    @IBAction func tapped1(_ sender: UIButton) {
        // This is how easy it is to configure, give it title, details and the image.
        let blurAlert = RSBlurAlertController()
        blurAlert.alertTitle = "Attention"
        blurAlert.alertDetail = "Describe the alert to the user using this so that user gets some idea."
        blurAlert.alertImage = UIImage(named: "warning")
        present(blurAlert, animated: false, completion: nil)
    }
    
    @IBAction func tapped2(_ sender: UIButton) {
        // Works perfect without a title and with just details
        let blurAlert = RSBlurAlertController()
        blurAlert.alertDetail = "A revan has arrived from King's Landing"
        blurAlert.alertImage = UIImage(named: "message")
        
        /* The display time of this alert is also customisable. Say in case your details are longer
            and you want to give user time to read it. */
        
        // blurAlert.alertVisibleTime = 3
        
        present(blurAlert, animated: false, completion: nil)
    }
    
    @IBAction func tapped3(_ sender: UIButton) {
        // Works perfect with just an image
        let blurAlert = RSBlurAlertController()
        blurAlert.alertImage = UIImage(named: "warning")
        present(blurAlert, animated: false, completion: nil)
    }
    
    @IBAction func tapped4(_ sender: UIButton) {
        // Works perfect with just a title
        let blurAlert = RSBlurAlertController()
        blurAlert.alertTitle = "You win!"
        blurAlert.alertImage = UIImage(named: "cup")
        present(blurAlert, animated: false, completion: nil)
    }
    
    @IBAction func tapped5(_ sender: UIButton) {
        // I have also made it in amazing dark mode :)
        let blurAlert = RSBlurAlertController()
        blurAlert.alertTitle = "Attention"
        blurAlert.alertDetail = "Describe the alert to the user using this so that user gets some idea."
        blurAlert.alertImage = UIImage(named: "warning")
        blurAlert.alertType = .dark
        present(blurAlert, animated: false, completion: nil)
    }
}

