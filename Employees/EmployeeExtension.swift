//
//  EmployeeExtension.swift
//  Employees
//
//  Created by Robert Witt on 08.01.19.
//  Copyright © 2019 SAP. All rights reserved.
//

import Foundation
import Contacts

extension Employee {
    
    var fullName: String? {
        let lastName = self.lastName ?? ""
        let firstName = self.firstName ?? ""
        let titleOfCourtesy = self.titleOfCourtesy ?? ""
        let fullName = String(format: "%@ %@ %@", titleOfCourtesy, firstName, lastName)
        return fullName.trimmingCharacters(in: CharacterSet.whitespaces)
    }
    
    var postalAddress: CNPostalAddress? {
        let postalAddress = CNMutablePostalAddress()
        postalAddress.street = address ?? ""
        postalAddress.city = city ?? ""
        postalAddress.state = region ?? ""
        postalAddress.postalCode = postalCode ?? ""
        postalAddress.country = country ?? ""
        return postalAddress
    }
    
    var addressLine: String? {
        guard let postalAddress = postalAddress else {
            return nil
        }
        return CNPostalAddressFormatter().string(from: postalAddress)
    }
    
    var formattedBirthDate: String? {
        guard let birthDate = birthDate else {
            return nil
        }
        return Formatter().format(date: birthDate.toDate(), dateStyle: .medium, timeStyle: .none)
    }
    
    var formattedHireDate: String? {
        guard let hireDate = hireDate else {
            return nil
        }
        return Formatter().format(date: hireDate.toDate(), dateStyle: .medium, timeStyle: .none)
    }
    
    var isLead: Bool {
        return employees1.count > 0
    }
    
    var hasLead: Bool {
        return employee1 != nil
    }
    
    var contact: CNContact {
        let contact = CNMutableContact()
        contact.contactType = .person
        contact.familyName = lastName ?? ""
        contact.givenName = firstName ?? ""
        contact.jobTitle = title ?? ""
        contact.imageData = photo
        contact.note = notes ?? ""
        contact.birthday = birthDate?.dateComponents
        if let phone = homePhone {
            contact.phoneNumbers = [CNLabeledValue(label: CNLabelWork, value: CNPhoneNumber(stringValue: phone))]
        }
        if let postalAddress = postalAddress {
            contact.postalAddresses = [CNLabeledValue(label: CNLabelWork, value: postalAddress)]
        }
        return contact
    }
    
}
