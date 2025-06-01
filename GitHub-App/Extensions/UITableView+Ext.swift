//
//  UITableView+Ext.swift
//  GitHub-App
//
//  Created by Fernando Mesquita on 01/06/25.
//

import UIKit

extension UITableView {
    
    func reloadDataOnMainThread() {
        DispatchQueue.main.async {
            self.reloadData()
        }
    }
    
    func removeExcessCells() {
        tableFooterView = UIView(frame: .zero)
    }
}
