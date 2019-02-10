//
//  EmployeeDetailsViewController.swift
//  Employees
//
//  Created by Robert Witt on 08.01.19.
//  Copyright © 2019 SAP. All rights reserved.
//

import UIKit
import MessageUI
import ContactsUI
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
    
    private enum TableViewActionsRow: Int {
        case shareContact = 0
        static let count = 1
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
    private var actionsSection: Int {
        return territoriesSection + 1
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureTableView()
        configureHeader()
        refreshEmployee()
    }
    
    private func configureTableView() {
        tableView.register(FUIButtonFormCell.self, forCellReuseIdentifier: FUIButtonFormCell.reuseIdentifier)
        tableView.rowHeight = UITableView.automaticDimension
    }
    
    private func configureHeader() {
        profileHeader.headlineText = " "
        profileHeader.subheadlineText = " "
        profileHeader.descriptionText = presentedInSplitView ? " " : nil
        profileHeader.detailContentView = FUIActivityControl()
        tableView.addSubview(profileHeader)
    }

    // MARK: Table View Data Source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return actionsSection + 1
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
            return employee?.territories.count ?? 0
        case actionsSection:
            return TableViewActionsRow.count
        default:
            return 0
        }
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        switch section {
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
            return territoryCellForRowAtIndexPath(indexPath)
        case actionsSection:
            return actionsCellForRowAtIndexPath(indexPath)
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
    
    private func territoryCellForRowAtIndexPath(_ indexPath: IndexPath) -> UITableViewCell {
        let territory = employee?.territories[indexPath.row]
        return keyValueCellForRowAtIndexPath(indexPath, key: territory?.territoryDescription, value: territory?.region?.regionDescription)
    }
    
    private func keyValueCellForRowAtIndexPath(_ indexPath: IndexPath, key: String?, value: String?, hasDetail: Bool = false) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "KeyValueCell", for: indexPath)
        cell.textLabel?.text = key
        cell.detailTextLabel?.text = value
        cell.accessoryType = hasDetail ? .disclosureIndicator : .none
        cell.selectionStyle = hasDetail ? .default : .none
        return cell
    }
    
    private func actionsCellForRowAtIndexPath(_ indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: FUIButtonFormCell.reuseIdentifier, for: indexPath) as! FUIButtonFormCell
        cell.alignment = .left
        switch TableViewActionsRow(rawValue: indexPath.row)! {
        case .shareContact:
            cell.button.titleLabel?.text = NSLocalizedString("shareContactButtonTitle", comment: "")
            cell.button.addTarget(self, action: #selector(shareContactTapped(_:)), for: .touchUpInside)
        }
        return cell
    }
    
    // MARK: Table View Delegate
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        var nextEmployee: Employee?
        if indexPath.section == detailsSection && indexPath.row == TableViewDetailsRow.lead.rawValue {
            nextEmployee = employee?.employee1
        } else if indexPath.section == directsSection {
            nextEmployee = employee?.employees1[indexPath.row]
        }
        if let nextEmployee = nextEmployee {
            let backBarButtonItem = UIBarButtonItem()
            backBarButtonItem.title = employee?.lastName
            navigationItem.backBarButtonItem = backBarButtonItem
            let employeeDetailsStoryboard = UIStoryboard(name: "EmployeeDetails", bundle: nil)
            let employeeDetailsViewController = employeeDetailsStoryboard.instantiateViewController(withIdentifier: "EmployeeDetails") as! EmployeeDetailsViewController
            employeeDetailsViewController.employeeID = nextEmployee.employeeID
            navigationController?.pushViewController(employeeDetailsViewController, animated: true)
        }
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
    
    @objc func shareContactTapped(_ sender: UIButton) {
        let contactStore = CNContactStore()
        contactStore.requestAccess(for: .contacts) { (granted, error) in
            if let error = error {
                self.showAlert(withError: error)
            }
            if granted, let contact = self.employee?.contact {
                let contactViewController = CNContactViewController(forUnknownContact: contact)
                contactViewController.contactStore = contactStore
                self.navigationController?.pushViewController(contactViewController, animated: true)
            }
        }
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
        profileHeader.descriptionText = presentedInSplitView ? employee?.notes : nil
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
