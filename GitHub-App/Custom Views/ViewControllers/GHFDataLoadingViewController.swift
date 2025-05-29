//
//  GHFDataLoadingViewController.swift
//  GitHub-App
//
//  Created by Fernando Mesquita on 02/06/24.
//

import UIKit

class GHFDataLoadingViewController: UIViewController {
    
    var containerView: UIView?

    func showLoadingView() {
        containerView = UIView(frame: view.bounds)
        view.addSubview(containerView!)

        containerView?.backgroundColor = .systemBackground
        containerView?.alpha = 0

        UIView.animate(withDuration: 0.25) {
            self.containerView?.alpha = 0.8
        }

        let activityIndicator = UIActivityIndicatorView(style: .large)
        containerView?.addSubview(activityIndicator)

        activityIndicator.translatesAutoresizingMaskIntoConstraints = false

        NSLayoutConstraint.activate([
            activityIndicator.centerYAnchor.constraint(equalTo: self.view.centerYAnchor),
            activityIndicator.centerXAnchor.constraint(equalTo: self.view.centerXAnchor)
        ])

        activityIndicator.startAnimating()
    }
    
    func dismissLoadingView() {
        DispatchQueue.main.async {
            if let containerView = self.containerView {
                containerView.removeFromSuperview()
                self.containerView = nil
            }
        }
    }
    
    func showEmptyStateView(with message: String, in view: UIView) {
        let emptyStateView = GHFEmptyStateView(message: message)
        emptyStateView.frame = view.bounds
        view.addSubview(emptyStateView)
    }
  
}
