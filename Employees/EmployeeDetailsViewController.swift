//
//  EmployeeDetailsViewController.swift
//  Employees
//
//  Created by Robert Witt on 08.01.19.
//  Copyright © 2019 SAP. All rights reserved.
//

import UIKit
import SAPFiori
import SAPOData

class EmployeeDetailsViewController: UITableViewController {
    
    // MARK: Properties
    
    var employeeID: Int?
    private var employee: Employee?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        refreshEmployee()
    }

    // MARK: Table View Data Source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 0
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return 0
    }

    /*
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)

        // Configure the cell...

        return cell
    }
    */
    
    // MARK: Data Access
    
    private func refreshEmployee() {
        guard let employeeID = employeeID else {
            return
        }
        
        let loadingIndicator = FUIModalLoadingIndicatorView()
        loadingIndicator.show(inView: view, animated: true)
        
        let query = DataQuery()
            .withKey(Employee.key(employeeID: employeeID))
            .expand(Employee.employee1, Employee.employees1, Employee.territories)
        dataService.fetchEmployee(matching: query) { (employee, error) in
            if let error = error {
                self.showAlert(withError: error)
            }
            self.employee = employee
            self.tableView.reloadData()
            loadingIndicator.dismiss()
        }
    }
    
}
