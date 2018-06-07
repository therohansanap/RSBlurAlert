//
//  RSBlurAlertController.swift
//  Pods-RSBlurAlert_Example
//
//  Created by Rohan Sanap on 23/05/18.
//

import UIKit

public enum RSBlurAlertType {
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
    public var alertType = RSBlurAlertType.light
    public var alertVisibleTime: TimeInterval?
    public var autoHide = true
    
    private let defaultAlertVisibleTime: TimeInterval = 1.5
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
        
        setContent()
        setConstraints()
        setUIAccordingToAlertType()
        setAccordingToAutoHide()
    }
    
    private func setContent() {
        titleLabel.text = alertTitle
        detailLabel.text = alertDetail
        
        if let alertImage = alertImage {
            alertImageView.image = alertImage.withRenderingMode(.alwaysTemplate)
        }else {
            let bundle = Bundle(for: RSBlurAlertController.self)
            if let defaultImage = UIImage(named: "default", in: bundle, compatibleWith: nil) {
                alertImageView.image = defaultImage.withRenderingMode(.alwaysTemplate)
            }
        }
    }
    
    private func setConstraints() {
        detailLabelTopConstraint.constant = 0
        if alertTitle == nil && alertDetail == nil {
            alertImageViewTopConstraint.constant = 30
        }else if alertTitle != nil && alertDetail != nil {
            detailLabelTopConstraint.constant = 5
        }
    }
    
    private func setUIAccordingToAlertType() {
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
    
    private func setAccordingToAutoHide() {
        if autoHide {
            Timer.scheduledTimer(withTimeInterval: alertVisibleTime ?? defaultAlertVisibleTime, repeats: false, block: dismissAlert(_:))
        }else {
            let tapGesture = UITapGestureRecognizer(target: self, action: #selector(dismissAlert(_:)))
            view.addGestureRecognizer(tapGesture)
        }
    }
    
    @objc private func dismissAlert(_ timer: Timer?) {
        UIView.animate(withDuration: 0.5, animations: { [weak self] in
            self?.view.alpha = 0
        }, completion: { [weak self] (completion) in
            self?.dismiss(animated: false, completion: nil)
        })
    }
}
