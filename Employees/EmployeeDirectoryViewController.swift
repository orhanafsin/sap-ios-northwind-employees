//
//  EmployeeDirectoryViewController.swift
//  Employees
//
//  Created by Robert Witt on 08.01.19.
//  Copyright © 2019 SAP. All rights reserved.
//

import UIKit
import SAPFiori

class EmployeeDirectoryViewController: UITableViewController {
    
    // MARK: View Lidecycle

    override func viewDidLoad() {
        super.viewDidLoad()
        configureTableView()
    }
    
    private func configureTableView() {
        tableView.register(FUIContactCell.self, forCellReuseIdentifier: FUIContactCell.reuseIdentifier)
        tableView.estimatedRowHeight = 44
        tableView.rowHeight = UITableView.automaticDimension
    }

    // MARK: Table View Data Source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return 1
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: FUIContactCell.reuseIdentifier, for: indexPath) as! FUIContactCell
        cell.headlineText = "Nancy Davolio"
        cell.subheadlineText = "Sales Representative"
        cell.accessoryType = presentedInSplitView ? .none : .disclosureIndicator

        return cell
    }

}
