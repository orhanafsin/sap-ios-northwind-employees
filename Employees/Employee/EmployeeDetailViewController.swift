//
// EmployeeDetailViewController.swift
// Employees
//
// Created by SAP Cloud Platform SDK for iOS Assistant application on 08/01/19
//

import Foundation
import SAPCommon
import SAPFiori
import SAPFoundation
import SAPOData

class EmployeeDetailViewController: FUIFormTableViewController, SAPFioriLoadingIndicator {
    private let appDelegate = UIApplication.shared.delegate as! AppDelegate
    private var northwindEntities: NorthwindEntities<OnlineODataProvider> {
        return self.appDelegate.northwindEntities
    }

    private var validity = [String: Bool]()
    private var _entity: Employee?
    var allowsEditableCells = false
    var entity: Employee {
        get {
            if self._entity == nil {
                self._entity = self.createEntityWithDefaultValues()
            }
            return self._entity!
        }
        set {
            self._entity = newValue
        }
    }

    private let logger = Logger.shared(named: "EmployeeMasterViewControllerLogger")
    var loadingIndicator: FUILoadingIndicatorView?
    var entityUpdater: EntityUpdaterDelegate?
    var tableUpdater: EntitySetUpdaterDelegate?
    private let okTitle = NSLocalizedString("keyOkButtonTitle",
                                            value: "OK",
                                            comment: "XBUT: Title of OK button.")
    var preventNavigationLoop = false
    var entitySetName: String?

    override func viewDidLoad() {
        super.viewDidLoad()
        self.tableView.rowHeight = UITableView.automaticDimension
        self.tableView.estimatedRowHeight = 44
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Segues

    override func prepare(for segue: UIStoryboardSegue, sender _: Any?) {
        if segue.identifier == "updateEntity" {
            // Show the Detail view with the current entity, where the properties scan be edited and updated
            self.logger.info("Showing a view to update the selected entity.")
            let dest = segue.destination as! UINavigationController
            let detailViewController = dest.viewControllers[0] as! EmployeeDetailViewController
            detailViewController.title = NSLocalizedString("keyUpdateEntityTitle", value: "Update Entity", comment: "XTIT: Title of update selected entity screen.")
            detailViewController.entity = self.entity
            let doneButton = UIBarButtonItem(barButtonSystemItem: .done, target: detailViewController, action: #selector(detailViewController.updateEntity))
            detailViewController.navigationItem.rightBarButtonItem = doneButton
            let cancelButton = UIBarButtonItem(title: NSLocalizedString("keyCancelButtonToGoPreviousScreen", value: "Cancel", comment: "XBUT: Title of Cancel button."), style: .plain, target: detailViewController, action: #selector(detailViewController.cancel))
            detailViewController.navigationItem.leftBarButtonItem = cancelButton
            detailViewController.allowsEditableCells = true
            detailViewController.entityUpdater = self
        }
    }

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        switch indexPath.row {
        case 0:
            return self.cellForEmployeeID(tableView: tableView, indexPath: indexPath, currentEntity: self.entity, property: Employee.employeeID)
        case 1:
            return self.cellForLastName(tableView: tableView, indexPath: indexPath, currentEntity: self.entity, property: Employee.lastName)
        case 2:
            return self.cellForFirstName(tableView: tableView, indexPath: indexPath, currentEntity: self.entity, property: Employee.firstName)
        case 3:
            return self.cellForTitle(tableView: tableView, indexPath: indexPath, currentEntity: self.entity, property: Employee.title)
        case 4:
            return self.cellForTitleOfCourtesy(tableView: tableView, indexPath: indexPath, currentEntity: self.entity, property: Employee.titleOfCourtesy)
        case 5:
            return self.cellForBirthDate(tableView: tableView, indexPath: indexPath, currentEntity: self.entity, property: Employee.birthDate)
        case 6:
            return self.cellForHireDate(tableView: tableView, indexPath: indexPath, currentEntity: self.entity, property: Employee.hireDate)
        case 7:
            return self.cellForAddress(tableView: tableView, indexPath: indexPath, currentEntity: self.entity, property: Employee.address)
        case 8:
            return self.cellForCity(tableView: tableView, indexPath: indexPath, currentEntity: self.entity, property: Employee.city)
        case 9:
            return self.cellForRegion(tableView: tableView, indexPath: indexPath, currentEntity: self.entity, property: Employee.region)
        case 10:
            return self.cellForPostalCode(tableView: tableView, indexPath: indexPath, currentEntity: self.entity, property: Employee.postalCode)
        case 11:
            return self.cellForCountry(tableView: tableView, indexPath: indexPath, currentEntity: self.entity, property: Employee.country)
        case 12:
            return self.cellForHomePhone(tableView: tableView, indexPath: indexPath, currentEntity: self.entity, property: Employee.homePhone)
        case 13:
            return self.cellForExtension(tableView: tableView, indexPath: indexPath, currentEntity: self.entity, property: Employee.extension)
        case 14:
            return self.cellForNotes(tableView: tableView, indexPath: indexPath, currentEntity: self.entity, property: Employee.notes)
        case 15:
            return self.cellForReportsTo(tableView: tableView, indexPath: indexPath, currentEntity: self.entity, property: Employee.reportsTo)
        case 16:
            return self.cellForPhotoPath(tableView: tableView, indexPath: indexPath, currentEntity: self.entity, property: Employee.photoPath)
        case 17:
            let cell = CellCreationHelper.cellForDefault(tableView: tableView, indexPath: indexPath, editingIsAllowed: false)
            cell.keyName = "Employees1"
            cell.value = " "
            cell.accessoryType = .disclosureIndicator
            return cell
        case 18:
            let cell = CellCreationHelper.cellForDefault(tableView: tableView, indexPath: indexPath, editingIsAllowed: false)
            cell.keyName = "Employee1"
            cell.value = " "
            cell.accessoryType = .disclosureIndicator
            return cell
        case 19:
            let cell = CellCreationHelper.cellForDefault(tableView: tableView, indexPath: indexPath, editingIsAllowed: false)
            cell.keyName = "Orders"
            cell.value = " "
            cell.accessoryType = .disclosureIndicator
            return cell
        case 20:
            let cell = CellCreationHelper.cellForDefault(tableView: tableView, indexPath: indexPath, editingIsAllowed: false)
            cell.keyName = "Territories"
            cell.value = " "
            cell.accessoryType = .disclosureIndicator
            return cell
        default:
            return UITableViewCell()
        }
    }

    override func tableView(_: UITableView, numberOfRowsInSection _: Int) -> Int {
        return 21
    }

    override func tableView(_: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        if indexPath.row < 17 {
            return true
        }
        return false
    }

    override func tableView(_: UITableView, didSelectRowAt indexPath: IndexPath) {
        if self.preventNavigationLoop {
            return
        }
        switch indexPath.row {
        case 17:
            self.showFioriLoadingIndicator()
            let destinationStoryBoard = UIStoryboard(name: "Employee", bundle: nil)
            var masterViewController = destinationStoryBoard.instantiateViewController(withIdentifier: "EmployeeMaster")
            func loadProperty(_ completionHandler: @escaping ([Employee]?, Error?) -> Void) {
                self.northwindEntities.loadProperty(Employee.employees1, into: self.entity) { error in
                    self.hideFioriLoadingIndicator()
                    if let error = error {
                        completionHandler(nil, error)
                        return
                    }
                    completionHandler(self.entity.employees1, nil)
                }
            }
            (masterViewController as! EmployeeMasterViewController).loadEntitiesBlock = loadProperty
            masterViewController.navigationItem.title = "Employees1"
            (masterViewController as! EmployeeMasterViewController).preventNavigationLoop = true
            self.navigationController?.pushViewController(masterViewController, animated: true)
        case 18:
            self.showFioriLoadingIndicator()
            let destinationStoryBoard = UIStoryboard(name: "Employee", bundle: nil)
            let destinationDetailVC = destinationStoryBoard.instantiateViewController(withIdentifier: "EmployeeDetailViewController") as! EmployeeDetailViewController
            self.northwindEntities.loadProperty(Employee.employee1, into: self.entity) { error in
                self.hideFioriLoadingIndicator()
                if let error = error {
                    let alertController = UIAlertController(title: NSLocalizedString("keyErrorLoadingData", value: "Loading data failed!", comment: "XTIT: Title of loading data error pop up."), message: error.localizedDescription, preferredStyle: .alert)
                    alertController.addAction(UIAlertAction(title: self.okTitle, style: .default))
                    OperationQueue.main.addOperation({
                        // Present the alertController
                        self.present(alertController, animated: true)
                    })
                    return
                }
                if let employee1 = self.entity.employee1 {
                    destinationDetailVC.entity = employee1
                }
                destinationDetailVC.navigationItem.leftItemsSupplementBackButton = true
                destinationDetailVC.navigationItem.title = "Employee1"
                destinationDetailVC.allowsEditableCells = false
                destinationDetailVC.preventNavigationLoop = true
                self.navigationController?.pushViewController(destinationDetailVC, animated: true)
            }
        case 19:
            self.showFioriLoadingIndicator()
            let destinationStoryBoard = UIStoryboard(name: "Order", bundle: nil)
            var masterViewController = destinationStoryBoard.instantiateViewController(withIdentifier: "OrderMaster")
            func loadProperty(_ completionHandler: @escaping ([Order]?, Error?) -> Void) {
                self.northwindEntities.loadProperty(Employee.orders, into: self.entity) { error in
                    self.hideFioriLoadingIndicator()
                    if let error = error {
                        completionHandler(nil, error)
                        return
                    }
                    completionHandler(self.entity.orders, nil)
                }
            }
            (masterViewController as! OrderMasterViewController).loadEntitiesBlock = loadProperty
            masterViewController.navigationItem.title = "Orders"
            (masterViewController as! OrderMasterViewController).preventNavigationLoop = true
            self.navigationController?.pushViewController(masterViewController, animated: true)
        case 20:
            self.showFioriLoadingIndicator()
            let destinationStoryBoard = UIStoryboard(name: "Territory", bundle: nil)
            var masterViewController = destinationStoryBoard.instantiateViewController(withIdentifier: "TerritoryMaster")
            func loadProperty(_ completionHandler: @escaping ([Territory]?, Error?) -> Void) {
                self.northwindEntities.loadProperty(Employee.territories, into: self.entity) { error in
                    self.hideFioriLoadingIndicator()
                    if let error = error {
                        completionHandler(nil, error)
                        return
                    }
                    completionHandler(self.entity.territories, nil)
                }
            }
            (masterViewController as! TerritoryMasterViewController).loadEntitiesBlock = loadProperty
            masterViewController.navigationItem.title = "Territories"
            (masterViewController as! TerritoryMasterViewController).preventNavigationLoop = true
            self.navigationController?.pushViewController(masterViewController, animated: true)
        default:
            return
        }
    }

    // MARK: - OData property specific cell creators

    private func cellForEmployeeID(tableView: UITableView, indexPath: IndexPath, currentEntity: Employee, property: Property) -> UITableViewCell {
        var value = ""
        if let propertyValue = currentEntity.employeeID {
            value = "\(propertyValue)"
        }
        return CellCreationHelper.cellForProperty(tableView: tableView, indexPath: indexPath, entity: self.entity, property: property, value: value, editingIsAllowed: self.allowsEditableCells, changeHandler: { (newValue: String) -> Bool in
            var isNewValueValid = false
            // The property is optional, so nil value can be accepted
            if newValue.isEmpty {
                currentEntity.employeeID = nil
                isNewValueValid = true
            } else {
                if let validValue = Int(newValue) {
                    currentEntity.employeeID = validValue
                    isNewValueValid = true
                }
            }
            self.validity[property.name] = isNewValueValid
            self.barButtonShouldBeEnabled()
            return isNewValueValid
        })
    }

    private func cellForLastName(tableView: UITableView, indexPath: IndexPath, currentEntity: Employee, property: Property) -> UITableViewCell {
        var value = ""
        if let propertyValue = currentEntity.lastName {
            value = "\(propertyValue)"
        }
        return CellCreationHelper.cellForProperty(tableView: tableView, indexPath: indexPath, entity: self.entity, property: property, value: value, editingIsAllowed: self.allowsEditableCells, changeHandler: { (newValue: String) -> Bool in
            var isNewValueValid = false
            // The property is optional, so nil value can be accepted
            if newValue.isEmpty {
                currentEntity.lastName = nil
                isNewValueValid = true
            } else {
                if Employee.lastName.isOptional || newValue != "" {
                    currentEntity.lastName = newValue
                    isNewValueValid = true
                }
            }
            self.validity[property.name] = isNewValueValid
            self.barButtonShouldBeEnabled()
            return isNewValueValid
        })
    }

    private func cellForFirstName(tableView: UITableView, indexPath: IndexPath, currentEntity: Employee, property: Property) -> UITableViewCell {
        var value = ""
        if let propertyValue = currentEntity.firstName {
            value = "\(propertyValue)"
        }
        return CellCreationHelper.cellForProperty(tableView: tableView, indexPath: indexPath, entity: self.entity, property: property, value: value, editingIsAllowed: self.allowsEditableCells, changeHandler: { (newValue: String) -> Bool in
            var isNewValueValid = false
            // The property is optional, so nil value can be accepted
            if newValue.isEmpty {
                currentEntity.firstName = nil
                isNewValueValid = true
            } else {
                if Employee.firstName.isOptional || newValue != "" {
                    currentEntity.firstName = newValue
                    isNewValueValid = true
                }
            }
            self.validity[property.name] = isNewValueValid
            self.barButtonShouldBeEnabled()
            return isNewValueValid
        })
    }

    private func cellForTitle(tableView: UITableView, indexPath: IndexPath, currentEntity: Employee, property: Property) -> UITableViewCell {
        var value = ""
        if let propertyValue = currentEntity.title {
            value = "\(propertyValue)"
        }
        return CellCreationHelper.cellForProperty(tableView: tableView, indexPath: indexPath, entity: self.entity, property: property, value: value, editingIsAllowed: self.allowsEditableCells, changeHandler: { (newValue: String) -> Bool in
            var isNewValueValid = false
            // The property is optional, so nil value can be accepted
            if newValue.isEmpty {
                currentEntity.title = nil
                isNewValueValid = true
            } else {
                if Employee.title.isOptional || newValue != "" {
                    currentEntity.title = newValue
                    isNewValueValid = true
                }
            }
            self.validity[property.name] = isNewValueValid
            self.barButtonShouldBeEnabled()
            return isNewValueValid
        })
    }

    private func cellForTitleOfCourtesy(tableView: UITableView, indexPath: IndexPath, currentEntity: Employee, property: Property) -> UITableViewCell {
        var value = ""
        if let propertyValue = currentEntity.titleOfCourtesy {
            value = "\(propertyValue)"
        }
        return CellCreationHelper.cellForProperty(tableView: tableView, indexPath: indexPath, entity: self.entity, property: property, value: value, editingIsAllowed: self.allowsEditableCells, changeHandler: { (newValue: String) -> Bool in
            var isNewValueValid = false
            // The property is optional, so nil value can be accepted
            if newValue.isEmpty {
                currentEntity.titleOfCourtesy = nil
                isNewValueValid = true
            } else {
                if Employee.titleOfCourtesy.isOptional || newValue != "" {
                    currentEntity.titleOfCourtesy = newValue
                    isNewValueValid = true
                }
            }
            self.validity[property.name] = isNewValueValid
            self.barButtonShouldBeEnabled()
            return isNewValueValid
        })
    }

    private func cellForBirthDate(tableView: UITableView, indexPath: IndexPath, currentEntity: Employee, property: Property) -> UITableViewCell {
        var value = ""
        if let propertyValue = currentEntity.birthDate {
            value = "\(propertyValue)"
        }
        return CellCreationHelper.cellForProperty(tableView: tableView, indexPath: indexPath, entity: self.entity, property: property, value: value, editingIsAllowed: self.allowsEditableCells, changeHandler: { (newValue: String) -> Bool in
            var isNewValueValid = false
            // The property is optional, so nil value can be accepted
            if newValue.isEmpty {
                currentEntity.birthDate = nil
                isNewValueValid = true
            } else {
                if let validValue = LocalDateTime.parse(newValue) { // This is just a simple solution to handle UTC only
                    currentEntity.birthDate = validValue
                    isNewValueValid = true
                }
            }
            self.validity[property.name] = isNewValueValid
            self.barButtonShouldBeEnabled()
            return isNewValueValid
        })
    }

    private func cellForHireDate(tableView: UITableView, indexPath: IndexPath, currentEntity: Employee, property: Property) -> UITableViewCell {
        var value = ""
        if let propertyValue = currentEntity.hireDate {
            value = "\(propertyValue)"
        }
        return CellCreationHelper.cellForProperty(tableView: tableView, indexPath: indexPath, entity: self.entity, property: property, value: value, editingIsAllowed: self.allowsEditableCells, changeHandler: { (newValue: String) -> Bool in
            var isNewValueValid = false
            // The property is optional, so nil value can be accepted
            if newValue.isEmpty {
                currentEntity.hireDate = nil
                isNewValueValid = true
            } else {
                if let validValue = LocalDateTime.parse(newValue) { // This is just a simple solution to handle UTC only
                    currentEntity.hireDate = validValue
                    isNewValueValid = true
                }
            }
            self.validity[property.name] = isNewValueValid
            self.barButtonShouldBeEnabled()
            return isNewValueValid
        })
    }

    private func cellForAddress(tableView: UITableView, indexPath: IndexPath, currentEntity: Employee, property: Property) -> UITableViewCell {
        var value = ""
        if let propertyValue = currentEntity.address {
            value = "\(propertyValue)"
        }
        return CellCreationHelper.cellForProperty(tableView: tableView, indexPath: indexPath, entity: self.entity, property: property, value: value, editingIsAllowed: self.allowsEditableCells, changeHandler: { (newValue: String) -> Bool in
            var isNewValueValid = false
            // The property is optional, so nil value can be accepted
            if newValue.isEmpty {
                currentEntity.address = nil
                isNewValueValid = true
            } else {
                if Employee.address.isOptional || newValue != "" {
                    currentEntity.address = newValue
                    isNewValueValid = true
                }
            }
            self.validity[property.name] = isNewValueValid
            self.barButtonShouldBeEnabled()
            return isNewValueValid
        })
    }

    private func cellForCity(tableView: UITableView, indexPath: IndexPath, currentEntity: Employee, property: Property) -> UITableViewCell {
        var value = ""
        if let propertyValue = currentEntity.city {
            value = "\(propertyValue)"
        }
        return CellCreationHelper.cellForProperty(tableView: tableView, indexPath: indexPath, entity: self.entity, property: property, value: value, editingIsAllowed: self.allowsEditableCells, changeHandler: { (newValue: String) -> Bool in
            var isNewValueValid = false
            // The property is optional, so nil value can be accepted
            if newValue.isEmpty {
                currentEntity.city = nil
                isNewValueValid = true
            } else {
                if Employee.city.isOptional || newValue != "" {
                    currentEntity.city = newValue
                    isNewValueValid = true
                }
            }
            self.validity[property.name] = isNewValueValid
            self.barButtonShouldBeEnabled()
            return isNewValueValid
        })
    }

    private func cellForRegion(tableView: UITableView, indexPath: IndexPath, currentEntity: Employee, property: Property) -> UITableViewCell {
        var value = ""
        if let propertyValue = currentEntity.region {
            value = "\(propertyValue)"
        }
        return CellCreationHelper.cellForProperty(tableView: tableView, indexPath: indexPath, entity: self.entity, property: property, value: value, editingIsAllowed: self.allowsEditableCells, changeHandler: { (newValue: String) -> Bool in
            var isNewValueValid = false
            // The property is optional, so nil value can be accepted
            if newValue.isEmpty {
                currentEntity.region = nil
                isNewValueValid = true
            } else {
                if Employee.region.isOptional || newValue != "" {
                    currentEntity.region = newValue
                    isNewValueValid = true
                }
            }
            self.validity[property.name] = isNewValueValid
            self.barButtonShouldBeEnabled()
            return isNewValueValid
        })
    }

    private func cellForPostalCode(tableView: UITableView, indexPath: IndexPath, currentEntity: Employee, property: Property) -> UITableViewCell {
        var value = ""
        if let propertyValue = currentEntity.postalCode {
            value = "\(propertyValue)"
        }
        return CellCreationHelper.cellForProperty(tableView: tableView, indexPath: indexPath, entity: self.entity, property: property, value: value, editingIsAllowed: self.allowsEditableCells, changeHandler: { (newValue: String) -> Bool in
            var isNewValueValid = false
            // The property is optional, so nil value can be accepted
            if newValue.isEmpty {
                currentEntity.postalCode = nil
                isNewValueValid = true
            } else {
                if Employee.postalCode.isOptional || newValue != "" {
                    currentEntity.postalCode = newValue
                    isNewValueValid = true
                }
            }
            self.validity[property.name] = isNewValueValid
            self.barButtonShouldBeEnabled()
            return isNewValueValid
        })
    }

    private func cellForCountry(tableView: UITableView, indexPath: IndexPath, currentEntity: Employee, property: Property) -> UITableViewCell {
        var value = ""
        if let propertyValue = currentEntity.country {
            value = "\(propertyValue)"
        }
        return CellCreationHelper.cellForProperty(tableView: tableView, indexPath: indexPath, entity: self.entity, property: property, value: value, editingIsAllowed: self.allowsEditableCells, changeHandler: { (newValue: String) -> Bool in
            var isNewValueValid = false
            // The property is optional, so nil value can be accepted
            if newValue.isEmpty {
                currentEntity.country = nil
                isNewValueValid = true
            } else {
                if Employee.country.isOptional || newValue != "" {
                    currentEntity.country = newValue
                    isNewValueValid = true
                }
            }
            self.validity[property.name] = isNewValueValid
            self.barButtonShouldBeEnabled()
            return isNewValueValid
        })
    }

    private func cellForHomePhone(tableView: UITableView, indexPath: IndexPath, currentEntity: Employee, property: Property) -> UITableViewCell {
        var value = ""
        if let propertyValue = currentEntity.homePhone {
            value = "\(propertyValue)"
        }
        return CellCreationHelper.cellForProperty(tableView: tableView, indexPath: indexPath, entity: self.entity, property: property, value: value, editingIsAllowed: self.allowsEditableCells, changeHandler: { (newValue: String) -> Bool in
            var isNewValueValid = false
            // The property is optional, so nil value can be accepted
            if newValue.isEmpty {
                currentEntity.homePhone = nil
                isNewValueValid = true
            } else {
                if Employee.homePhone.isOptional || newValue != "" {
                    currentEntity.homePhone = newValue
                    isNewValueValid = true
                }
            }
            self.validity[property.name] = isNewValueValid
            self.barButtonShouldBeEnabled()
            return isNewValueValid
        })
    }

    private func cellForExtension(tableView: UITableView, indexPath: IndexPath, currentEntity: Employee, property: Property) -> UITableViewCell {
        var value = ""
        if let propertyValue = currentEntity.extension {
            value = "\(propertyValue)"
        }
        return CellCreationHelper.cellForProperty(tableView: tableView, indexPath: indexPath, entity: self.entity, property: property, value: value, editingIsAllowed: self.allowsEditableCells, changeHandler: { (newValue: String) -> Bool in
            var isNewValueValid = false
            // The property is optional, so nil value can be accepted
            if newValue.isEmpty {
                currentEntity.extension = nil
                isNewValueValid = true
            } else {
                if Employee.extension.isOptional || newValue != "" {
                    currentEntity.extension = newValue
                    isNewValueValid = true
                }
            }
            self.validity[property.name] = isNewValueValid
            self.barButtonShouldBeEnabled()
            return isNewValueValid
        })
    }

    private func cellForNotes(tableView: UITableView, indexPath: IndexPath, currentEntity: Employee, property: Property) -> UITableViewCell {
        var value = ""
        if let propertyValue = currentEntity.notes {
            value = "\(propertyValue)"
        }
        return CellCreationHelper.cellForProperty(tableView: tableView, indexPath: indexPath, entity: self.entity, property: property, value: value, editingIsAllowed: self.allowsEditableCells, changeHandler: { (newValue: String) -> Bool in
            var isNewValueValid = false
            // The property is optional, so nil value can be accepted
            if newValue.isEmpty {
                currentEntity.notes = nil
                isNewValueValid = true
            } else {
                if Employee.notes.isOptional || newValue != "" {
                    currentEntity.notes = newValue
                    isNewValueValid = true
                }
            }
            self.validity[property.name] = isNewValueValid
            self.barButtonShouldBeEnabled()
            return isNewValueValid
        })
    }

    private func cellForReportsTo(tableView: UITableView, indexPath: IndexPath, currentEntity: Employee, property: Property) -> UITableViewCell {
        var value = ""
        if let propertyValue = currentEntity.reportsTo {
            value = "\(propertyValue)"
        }
        return CellCreationHelper.cellForProperty(tableView: tableView, indexPath: indexPath, entity: self.entity, property: property, value: value, editingIsAllowed: self.allowsEditableCells, changeHandler: { (newValue: String) -> Bool in
            var isNewValueValid = false
            // The property is optional, so nil value can be accepted
            if newValue.isEmpty {
                currentEntity.reportsTo = nil
                isNewValueValid = true
            } else {
                if let validValue = Int(newValue) {
                    currentEntity.reportsTo = validValue
                    isNewValueValid = true
                }
            }
            self.validity[property.name] = isNewValueValid
            self.barButtonShouldBeEnabled()
            return isNewValueValid
        })
    }

    private func cellForPhotoPath(tableView: UITableView, indexPath: IndexPath, currentEntity: Employee, property: Property) -> UITableViewCell {
        var value = ""
        if let propertyValue = currentEntity.photoPath {
            value = "\(propertyValue)"
        }
        return CellCreationHelper.cellForProperty(tableView: tableView, indexPath: indexPath, entity: self.entity, property: property, value: value, editingIsAllowed: self.allowsEditableCells, changeHandler: { (newValue: String) -> Bool in
            var isNewValueValid = false
            // The property is optional, so nil value can be accepted
            if newValue.isEmpty {
                currentEntity.photoPath = nil
                isNewValueValid = true
            } else {
                if Employee.photoPath.isOptional || newValue != "" {
                    currentEntity.photoPath = newValue
                    isNewValueValid = true
                }
            }
            self.validity[property.name] = isNewValueValid
            self.barButtonShouldBeEnabled()
            return isNewValueValid
        })
    }

    // MARK: - OData functionalities

    @objc func createEntity() {
        self.showFioriLoadingIndicator()
        self.view.endEditing(true)
        self.logger.info("Creating entity in backend.")
        self.northwindEntities.createEntity(self.entity) { error in
            self.hideFioriLoadingIndicator()
            if let error = error {
                self.logger.error("Create entry failed. Error: \(error)", error: error)
                let alertController = UIAlertController(title: NSLocalizedString("keyErrorEntityCreationTitle", value: "Create entry failed", comment: "XTIT: Title of alert message about entity creation error."), message: error.localizedDescription, preferredStyle: .alert)
                alertController.addAction(UIAlertAction(title: self.okTitle, style: .default))
                OperationQueue.main.addOperation({
                    // Present the alertController
                    self.present(alertController, animated: true)
                })
                return
            }
            self.logger.info("Create entry finished successfully.")
            OperationQueue.main.addOperation({
                self.dismiss(animated: true) {
                    FUIToastMessage.show(message: NSLocalizedString("keyEntityCreationBody", value: "Created", comment: "XMSG: Title of alert message about successful entity creation."))
                    self.tableUpdater?.entitySetHasChanged()
                }
            })
        }
    }

    func createEntityWithDefaultValues() -> Employee {
        let newEntity = Employee()

        // Key properties without default value should be invalid by default for Create scenario
        if newEntity.employeeID == nil {
            self.validity["EmployeeID"] = false
        }
        self.barButtonShouldBeEnabled()
        return newEntity
    }

    @objc func updateEntity(_: AnyObject) {
        self.showFioriLoadingIndicator()
        self.view.endEditing(true)
        self.logger.info("Updating entity in backend.")
        self.northwindEntities.updateEntity(self.entity) { error in
            self.hideFioriLoadingIndicator()
            if let error = error {
                self.logger.error("Update entry failed. Error: \(error)", error: error)
                let alertController = UIAlertController(title: NSLocalizedString("keyErrorEntityUpdateTitle", value: "Update entry failed", comment: "XTIT: Title of alert message about entity update failure."), message: error.localizedDescription, preferredStyle: .alert)
                alertController.addAction(UIAlertAction(title: self.okTitle, style: .default))
                OperationQueue.main.addOperation({
                    // Present the alertController
                    self.present(alertController, animated: true)
                })
                return
            }
            self.logger.info("Update entry finished successfully.")
            OperationQueue.main.addOperation({
                self.dismiss(animated: true) {
                    FUIToastMessage.show(message: NSLocalizedString("keyUpdateEntityFinishedTitle", value: "Updated", comment: "XTIT: Title of alert message about successful entity update."))
                    self.entityUpdater?.entityHasChanged(self.entity)
                }
            })
        }
    }

    // MARK: - other logic, helper

    @objc func cancel() {
        OperationQueue.main.addOperation({
            self.dismiss(animated: true)
        })
    }

    // Check if all text fields are valid
    private func barButtonShouldBeEnabled() {
        let anyFieldInvalid = self.validity.values.first { field in
            return field == false
        }
        self.navigationItem.rightBarButtonItem?.isEnabled = anyFieldInvalid == nil
    }
}

extension EmployeeDetailViewController: EntityUpdaterDelegate {
    func entityHasChanged(_ entityValue: EntityValue?) {
        if let entity = entityValue {
            let currentEntity = entity as! Employee
            self.entity = currentEntity
            DispatchQueue.main.async { [weak self] in
                self?.tableView.reloadData()
            }
        }
    }
}
