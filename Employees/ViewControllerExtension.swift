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
    
    var presentedInSplitView: Bool {
        return !(self.splitViewController?.isCollapsed ?? true)
    }
    
    var dataService: NorthwindEntities<OnlineODataProvider> {
        return (UIApplication.shared.delegate as! AppDelegate).northwindEntities
    }
    
    func showAlert(withError error: Error) {
        let alert = UIAlertController(title: NSLocalizedString("errorAlertTitle", comment: ""),
                                      message: error.localizedDescription,
                                      preferredStyle: .alert)
        self.present(alert, animated: true)
    }
    
    func showAlert(withMessage message: String) {
        let alert = UIAlertController(title: NSLocalizedString("alertTitle", comment: ""),
                                      message: message,
                                      preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: NSLocalizedString("alertButtonOK", comment: ""), style: .default))
        present(alert, animated: true)
    }
    
}
