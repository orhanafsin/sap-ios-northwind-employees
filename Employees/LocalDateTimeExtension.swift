//
//  LocalDateTimeExtension.swift
//  Employees
//
//  Created by Robert Witt on 08.02.19.
//  Copyright © 2019 SAP. All rights reserved.
//

import Foundation
import SAPOData

extension LocalDateTime {
    
    func toDate() -> Date {
        let components = NSDateComponents()
        components.year = year
        components.month = month
        components.day = day
        components.hour = hour
        components.minute = minute
        components.second = second
        return NSCalendar.current.date(from: components as DateComponents)!
    }
    
}