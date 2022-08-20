//
//  String+Ext.swift
//  GitHub-App
//
//  Created by Fernando Mesquita on 20/08/22.
//

import Foundation

extension String {
    
    func convertToDate() -> Date? {
        let dateformatter = DateFormatter()
        dateformatter.dateFormat = "yyyy-MM-dd'T'HH:mm:ssZ"
        dateformatter.locale = Locale(identifier: "en_US_POSIX")
        dateformatter.timeZone = .current
        
        return dateformatter.date(from: self)
    }
    
    func convertToDisplayFormat() -> String {
        guard let date = self.convertToDate() else { return "N/A" }
        
        return date.convertToMonthYearformat()
    }
    
}
