//
//  RSBlurAlertController.swift
//  Pods-RSBlurAlert_Example
//
//  Created by Rohan Sanap on 23/05/18.
//

import UIKit

public class RSBlurAlertController: UIViewController {

    @IBOutlet private weak var titleLabel: UILabel!
    @IBOutlet weak var detailLabel: UILabel!
    
    public var alertTitle: String? = nil
    public var alertDetail: String? = nil
    
    public override func viewDidLoad() {
        super.viewDidLoad()
        titleLabel.text = alertTitle ?? "Alert"
        detailLabel.text = alertDetail
        
        Timer.scheduledTimer(withTimeInterval: 1.5, repeats: false) { [weak self] (timer) in
            UIView.animate(withDuration: 0.5, animations: {
                self?.view.alpha = 0
            }, completion: { (completion) in
                self?.dismiss(animated: false, completion: nil)
            })
        }
    }
    
    public init() {
        super.init(nibName: "RSBlurAlertController", bundle: Bundle(for: RSBlurAlertController.self))
        modalPresentationStyle = .overFullScreen
    }
    
    public required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    private override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
    }
}
