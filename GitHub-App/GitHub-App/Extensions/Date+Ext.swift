//
//  Date+Ext.swift
//  GitHub-App
//
//  Created by Fernando Mesquita on 20/08/22.
//

import Foundation

extension Date {
    func convertToMonthYearformat() -> String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "MMM yyyy"
        
        return dateFormatter.string(from: self)
    }
}
