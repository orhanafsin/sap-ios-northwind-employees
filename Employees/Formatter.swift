//
//  Formatter.swift
//  Employees
//
//  Created by Robert Witt on 08.02.19.
//  Copyright © 2019 SAP. All rights reserved.
//

import Foundation

class Formatter {
    
    func format(date: Date, dateStyle: DateFormatter.Style, timeStyle: DateFormatter.Style) -> String? {
        let dateFormatter = DateFormatter()
        dateFormatter.dateStyle = dateStyle
        dateFormatter.timeStyle = timeStyle
        dateFormatter.locale = Locale.current
        return dateFormatter.string(from: date)
    }
    
}
