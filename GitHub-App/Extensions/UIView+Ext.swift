//
//  UIView+Ext.swift
//  GitHub-App
//
//  Created by Fernando Mesquita on 29/05/25.
//

import UIKit

extension UIView {
    
    func addSubviews(_ views: UIView...) {
        for view in views {
            addSubview(view)
        }
    }
}
