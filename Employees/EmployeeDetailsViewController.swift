//
//  EmployeeDetailsViewController.swift
//  Employees
//
//  Created by Robert Witt on 08.01.19.
//  Copyright © 2019 SAP. All rights reserved.
//

import UIKit
import MessageUI
import SAPFiori
import SAPOData

class EmployeeDetailsViewController: UITableViewController, MFMessageComposeViewControllerDelegate {
    
    private enum TableViewDetailsRow: Int {
        case phone = 0
        case address = 1
        case birthDate = 2
        case hireDate = 3
        case lead = 4
        static let count = 5
    }
    
    // MARK: Properties
    
    var employeeID: Int?
    private var employee: Employee?
    private let profileHeader = FUIProfileHeader()
    private let detailsSection = 0
    private var directsSection: Int {
        if let employee = employee, employee.isLead {
            return 1
        } else {
            return -1
        }
    }
    private var territoriesSection: Int {
        return directsSection == -1 ? detailsSection + 1 : directsSection + 1
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureHeader()
        refreshEmployee()
    }
    
    private func configureHeader() {
        profileHeader.headlineText = " "
        profileHeader.subheadlineText = " "
        profileHeader.descriptionText = " "
        profileHeader.detailContentView = FUIActivityControl()
        tableView.addSubview(profileHeader)
    }

    // MARK: Table View Data Source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return territoriesSection + 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        switch section {
        case detailsSection:
            if let employee = employee, employee.hasLead {
                return TableViewDetailsRow.count
            } else {
                return TableViewDetailsRow.count - 1
            }
        case directsSection:
            return employee?.employees1.count ?? 0
        case territoriesSection:
            // TODO To be implemented
            return 0
        default:
            return 0
        }
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        switch section {
        case detailsSection:
            return NSLocalizedString("detailsTitle", comment: "")
        case directsSection:
            return NSLocalizedString("directsTitle", comment: "")
        case territoriesSection:
            return NSLocalizedString("territoriesTitle", comment: "")
        default:
            return nil
        }
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        switch indexPath.section {
        case detailsSection:
            return detailsCellForRowAtIndexPath(indexPath)
        case directsSection:
            return directsCellForRowAtIndexPath(indexPath)
        case territoriesSection:
            return UITableViewCell()
        default:
            return UITableViewCell()
        }
    }
    
    private func detailsCellForRowAtIndexPath(_ indexPath: IndexPath) -> UITableViewCell {
        switch TableViewDetailsRow(rawValue: indexPath.row)! {
        case .phone:
            return keyValueCellForRowAtIndexPath(indexPath, key: NSLocalizedString("employeePhone", comment: ""), value: employee?.homePhone)
        case .address:
            return keyValueCellForRowAtIndexPath(indexPath, key: NSLocalizedString("employeeAddress", comment: ""), value: employee?.addressLine)
        case .birthDate:
            return keyValueCellForRowAtIndexPath(indexPath, key: NSLocalizedString("employeeBirthDate", comment: ""), value: employee?.formattedBirthDate)
        case .hireDate:
            return keyValueCellForRowAtIndexPath(indexPath, key: NSLocalizedString("employeeHireDate", comment: ""), value: employee?.formattedHireDate)
        case .lead:
            return keyValueCellForRowAtIndexPath(indexPath, key: NSLocalizedString("employeeLead", comment: ""), value: employee?.employee1?.fullName, hasDetail: true)
        }
    }
    
    private func directsCellForRowAtIndexPath(_ indexPath: IndexPath) -> UITableViewCell {
        let direct = employee?.employees1[indexPath.row]
        let cell = tableView.dequeueReusableCell(withIdentifier: "ValueCell", for: indexPath)
        cell.textLabel?.text = direct?.fullName
        cell.accessoryType = .disclosureIndicator
        cell.selectionStyle = .default
        return cell
    }
    
    private func keyValueCellForRowAtIndexPath(_ indexPath: IndexPath, key: String?, value: String?, hasDetail: Bool = false) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "KeyValueCell", for: indexPath)
        cell.textLabel?.text = key
        cell.detailTextLabel?.text = value
        cell.accessoryType = hasDetail ? .disclosureIndicator : .none
        cell.selectionStyle = hasDetail ? .default : .none
        return cell
    }
    
    // MARK: Actions
    
    @objc func messageTapped(_ sender: UIButton) {
        guard MFMessageComposeViewController.canSendText() else {
            showAlert(withMessage: NSLocalizedString("messageServicesUnavailable", comment: ""))
            return
        }
        let messageComposer = MFMessageComposeViewController()
        messageComposer.messageComposeDelegate = self
        messageComposer.recipients = [employee!.homePhone!]
        present(messageComposer, animated: true)
    }
    
    @objc func phoneTapped(_ sender: UIButton) {
        guard let url = URL(string: "telprompt://\(employee!.homePhone!)"), UIApplication.shared.canOpenURL(url) else {
            showAlert(withMessage: NSLocalizedString("phoneServicesUnavailable", comment: ""))
            return
        }
        UIApplication.shared.open(url)
    }
    
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
            self.refreshHeader()
            self.tableView.reloadData()
            loadingIndicator.dismiss()
        }
    }
    
    private func refreshHeader() {
        profileHeader.headlineText = employee?.fullName
        profileHeader.subheadlineText = employee?.title
        profileHeader.descriptionText = employee?.notes
        if let photo = employee?.photo {
            profileHeader.imageView.image = UIImage(data: photo)
        }
        
        let activityControl = FUIActivityControl()
        let color = UIColor.preferredFioriColor(forStyle: .primary6)
        if employee?.homePhone != nil {
            activityControl.addActivities([.phone, .message])
            activityControl.activityItems[.phone]?.setTintColor(color, for: .normal)
            activityControl.activityItems[.phone]?.addTarget(self, action: #selector(phoneTapped(_:)), for: .touchUpInside)
            activityControl.activityItems[.message]?.setTintColor(color, for: .normal)
            activityControl.activityItems[.message]?.addTarget(self, action: #selector(messageTapped(_:)), for: .touchUpInside)
        }
        profileHeader.detailContentView = activityControl
    }
    
}

// MARK: - Message Compose View Controller Delegate

extension EmployeeDetailsViewController {
    
    func messageComposeViewController(_ controller: MFMessageComposeViewController, didFinishWith result: MessageComposeResult) {
        if result == .sent {
            FUIToastMessage.show(message: NSLocalizedString("messageSent", comment: ""))
        }
        controller.dismiss(animated: true)
    }
    
}
