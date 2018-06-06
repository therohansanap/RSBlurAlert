//
//  RSBlurAlertController.swift
//  Pods-RSBlurAlert_Example
//
//  Created by Rohan Sanap on 23/05/18.
//

import UIKit

public enum BlurAlertType {
    case light, dark
}

public class RSBlurAlertController: UIViewController {

    @IBOutlet private weak var titleLabel: UILabel!
    @IBOutlet private weak var detailLabel: UILabel!
    @IBOutlet private weak var visualEffectView: UIVisualEffectView!
    @IBOutlet private weak var alertImageView: UIImageView!
    @IBOutlet private weak var alertImageViewTopConstraint: NSLayoutConstraint!
    @IBOutlet private weak var detailLabelTopConstraint: NSLayoutConstraint!
    
    public var alertTitle: String?
    public var alertDetail: String?
    public var alertImage: UIImage?
    public var alertType = BlurAlertType.light
    
    private let lightImageColor = UIColor.black.withAlphaComponent(0.75)
    private let darkImageColor = UIColor.white.withAlphaComponent(0.75)
    private let lightTitleColor = UIColor.black.withAlphaComponent(0.75)
    private let darkTitleColor = UIColor.white.withAlphaComponent(0.75)
    private let lightDetailColor = UIColor.black.withAlphaComponent(0.5)
    private let darkDetailColor = UIColor.white.withAlphaComponent(0.5)
    
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
    
    public override func viewDidLoad() {
        super.viewDidLoad()
        
        titleLabel.text = alertTitle
        detailLabel.text = alertDetail
        
        if let alertImage = alertImage {
            alertImageView.image = alertImage.withRenderingMode(.alwaysTemplate)
        }
        
        detailLabelTopConstraint.constant = 0
        if alertTitle == nil && alertDetail == nil {
            alertImageViewTopConstraint.constant = 30
        }else if alertTitle != nil && alertDetail != nil {
            detailLabelTopConstraint.constant = 5
        }
        
        setUIAccordingToAlertType()
        
        Timer.scheduledTimer(withTimeInterval: 1.5, repeats: false) { [weak self] (timer) in
            UIView.animate(withDuration: 0.5, animations: {
                self?.view.alpha = 0
            }, completion: { (completion) in
                self?.dismiss(animated: false, completion: nil)
            })
        }
    }
    
    func setUIAccordingToAlertType() {
        switch alertType {
        case .light:
            visualEffectView.effect = UIBlurEffect(style: .light)
            alertImageView.tintColor = lightImageColor
            titleLabel.textColor = lightTitleColor
            detailLabel.textColor = lightDetailColor
        case .dark:
            visualEffectView.effect = UIBlurEffect(style: .dark)
            alertImageView.tintColor = darkImageColor
            titleLabel.textColor = darkTitleColor
            detailLabel.textColor = darkDetailColor
        }
    }
}
