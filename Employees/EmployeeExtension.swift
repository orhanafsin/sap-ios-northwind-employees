//
//  EmployeeExtension.swift
//  Employees
//
//  Created by Robert Witt on 08.01.19.
//  Copyright © 2019 SAP. All rights reserved.
//

import Foundation

extension Employee {
    
    var fullName: String? {
        let lastName = self.lastName ?? ""
        let firstName = self.firstName ?? ""
        let titleOfCourtesy = self.titleOfCourtesy ?? ""
        let fullName = String(format: "%@ %@ %@", titleOfCourtesy, firstName, lastName)
        return fullName.trimmingCharacters(in: CharacterSet.whitespaces)
    }
    
    var isLead: Bool {
        return employees1.count > 0
    }
    
}
