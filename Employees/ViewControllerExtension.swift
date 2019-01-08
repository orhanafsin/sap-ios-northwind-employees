//
//  ViewControllerExtension.swift
//  Employees
//
//  Created by Robert Witt on 08.01.19.
//  Copyright © 2019 SAP. All rights reserved.
//

import UIKit
import SAPOData

extension UIViewController {
    
    var dataService: NorthwindEntities<OnlineODataProvider> {
        return (UIApplication.shared.delegate as! AppDelegate).northwindEntities
    }
    
}
