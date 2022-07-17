//
//  UIViewController+Ext.swift
//  GitHub-App
//
//  Created by Fernando Mesquita on 12/07/22.
//

import UIKit

extension UIViewController {
    
    func presenteGHFAlertOnMainThread(title: String, message: String, buttonTitle: String) {
        DispatchQueue.main.async {
            let alertViewController = GHFAlertViewController(title: title, message: message, buttonTitle: buttonTitle)
            alertViewController.modalPresentationStyle = .overFullScreen
            alertViewController.modalTransitionStyle = .crossDissolve
            self.present(alertViewController, animated: true)
        }
    }
}
