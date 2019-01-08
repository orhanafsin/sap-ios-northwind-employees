//
// CollectionsViewController.swift
// Employees
//
// Created by SAP Cloud Platform SDK for iOS Assistant application on 08/01/19
//

import Foundation
import SAPFiori
import SAPOData

protocol EntityUpdaterDelegate {
    func entityHasChanged(_ entity: EntityValue?)
}

protocol EntitySetUpdaterDelegate {
    func entitySetHasChanged()
}

class CollectionsViewController: FUIFormTableViewController {
    private var collections = CollectionType.all

    // Variable to store the selected index path
    private var selectedIndex: IndexPath?

    private let appDelegate = UIApplication.shared.delegate as! AppDelegate

    private let okTitle = NSLocalizedString("keyOkButtonTitle",
                                            value: "OK",
                                            comment: "XBUT: Title of OK button.")

    var isPresentedInSplitView: Bool {
        return !(self.splitViewController?.isCollapsed ?? true)
    }

    // MARK: - Lifecycle

    override func viewDidLoad() {
        super.viewDidLoad()
        self.preferredContentSize = CGSize(width: 320, height: 480)

        self.tableView.rowHeight = UITableView.automaticDimension
        self.tableView.estimatedRowHeight = 44
    }

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        self.makeSelection()
    }

    override func viewWillTransition(to _: CGSize, with coordinator: UIViewControllerTransitionCoordinator) {
        coordinator.animate(alongsideTransition: nil, completion: { _ in
            let isNotInSplitView = !self.isPresentedInSplitView
            self.tableView.visibleCells.forEach { cell in
                // To refresh the disclosure indicator of each cell
                cell.accessoryType = isNotInSplitView ? .disclosureIndicator : .none
            }
            self.makeSelection()
        })
    }

    // MARK: - UITableViewDelegate

    override func numberOfSections(in _: UITableView) -> Int {
        return 1
    }

    override func tableView(_: UITableView, numberOfRowsInSection _: Int) -> Int {
        return self.collections.count
    }

    override func tableView(_: UITableView, heightForRowAt _: IndexPath) -> CGFloat {
        return 44
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: FUIObjectTableViewCell.reuseIdentifier, for: indexPath) as! FUIObjectTableViewCell
        cell.headlineLabel.text = self.collections[indexPath.row].rawValue
        cell.accessoryType = !self.isPresentedInSplitView ? .disclosureIndicator : .none
        cell.isMomentarySelection = false
        return cell
    }

    override func tableView(_: UITableView, didSelectRowAt indexPath: IndexPath) {
        self.selectedIndex = indexPath
        self.collectionSelected(at: indexPath)
    }

    // CollectionType selection helper

    private func collectionSelected(at: IndexPath) {
        // Load the EntityType specific ViewController from the specific storyboard
        var masterViewController: UIViewController!
        switch self.collections[at.row] {
        case .regions:
            let regionStoryBoard = UIStoryboard(name: "Region", bundle: nil)
            masterViewController = regionStoryBoard.instantiateViewController(withIdentifier: "RegionMaster")
            (masterViewController as! RegionMasterViewController).entitySetName = "Regions"
            func fetchRegions(_ completionHandler: @escaping ([Region]?, Error?) -> Void) {
                // Only request the first 20 values. If you want to modify the requested entities, you can do it here.
                let query = DataQuery().selectAll().top(20)
                do {
                    self.appDelegate.northwindEntities!.fetchRegions(matching: query) { regions, error in
                        if error == nil {
                            completionHandler(regions, nil)
                        } else {
                            completionHandler(nil, error)
                        }
                    }
                }
            }
            (masterViewController as! RegionMasterViewController).loadEntitiesBlock = fetchRegions
            masterViewController.navigationItem.title = "Region"
        case .customers:
            let customerStoryBoard = UIStoryboard(name: "Customer", bundle: nil)
            masterViewController = customerStoryBoard.instantiateViewController(withIdentifier: "CustomerMaster")
            (masterViewController as! CustomerMasterViewController).entitySetName = "Customers"
            func fetchCustomers(_ completionHandler: @escaping ([Customer]?, Error?) -> Void) {
                // Only request the first 20 values. If you want to modify the requested entities, you can do it here.
                let query = DataQuery().selectAll().top(20)
                do {
                    self.appDelegate.northwindEntities!.fetchCustomers(matching: query) { customers, error in
                        if error == nil {
                            completionHandler(customers, nil)
                        } else {
                            completionHandler(nil, error)
                        }
                    }
                }
            }
            (masterViewController as! CustomerMasterViewController).loadEntitiesBlock = fetchCustomers
            masterViewController.navigationItem.title = "Customer"
        case .orderDetailsExtendeds:
            let orderDetailsExtendedStoryBoard = UIStoryboard(name: "OrderDetailsExtended", bundle: nil)
            masterViewController = orderDetailsExtendedStoryBoard.instantiateViewController(withIdentifier: "OrderDetailsExtendedMaster")
            (masterViewController as! OrderDetailsExtendedMasterViewController).entitySetName = "OrderDetailsExtendeds"
            func fetchOrderDetailsExtendeds(_ completionHandler: @escaping ([OrderDetailsExtended]?, Error?) -> Void) {
                // Only request the first 20 values. If you want to modify the requested entities, you can do it here.
                let query = DataQuery().selectAll().top(20)
                do {
                    self.appDelegate.northwindEntities!.fetchOrderDetailsExtendeds(matching: query) { orderDetailsExtendeds, error in
                        if error == nil {
                            completionHandler(orderDetailsExtendeds, nil)
                        } else {
                            completionHandler(nil, error)
                        }
                    }
                }
            }
            (masterViewController as! OrderDetailsExtendedMasterViewController).loadEntitiesBlock = fetchOrderDetailsExtendeds
            masterViewController.navigationItem.title = "OrderDetailsExtended"
        case .productsByCategories:
            let productsByCategoryStoryBoard = UIStoryboard(name: "ProductsByCategory", bundle: nil)
            masterViewController = productsByCategoryStoryBoard.instantiateViewController(withIdentifier: "ProductsByCategoryMaster")
            (masterViewController as! ProductsByCategoryMasterViewController).entitySetName = "ProductsByCategories"
            func fetchProductsByCategories(_ completionHandler: @escaping ([ProductsByCategory]?, Error?) -> Void) {
                // Only request the first 20 values. If you want to modify the requested entities, you can do it here.
                let query = DataQuery().selectAll().top(20)
                do {
                    self.appDelegate.northwindEntities!.fetchProductsByCategories(matching: query) { productsByCategories, error in
                        if error == nil {
                            completionHandler(productsByCategories, nil)
                        } else {
                            completionHandler(nil, error)
                        }
                    }
                }
            }
            (masterViewController as! ProductsByCategoryMasterViewController).loadEntitiesBlock = fetchProductsByCategories
            masterViewController.navigationItem.title = "ProductsByCategory"
        case .orders:
            let orderStoryBoard = UIStoryboard(name: "Order", bundle: nil)
            masterViewController = orderStoryBoard.instantiateViewController(withIdentifier: "OrderMaster")
            (masterViewController as! OrderMasterViewController).entitySetName = "Orders"
            func fetchOrders(_ completionHandler: @escaping ([Order]?, Error?) -> Void) {
                // Only request the first 20 values. If you want to modify the requested entities, you can do it here.
                let query = DataQuery().selectAll().top(20)
                do {
                    self.appDelegate.northwindEntities!.fetchOrders(matching: query) { orders, error in
                        if error == nil {
                            completionHandler(orders, nil)
                        } else {
                            completionHandler(nil, error)
                        }
                    }
                }
            }
            (masterViewController as! OrderMasterViewController).loadEntitiesBlock = fetchOrders
            masterViewController.navigationItem.title = "Order"
        case .suppliers:
            let supplierStoryBoard = UIStoryboard(name: "Supplier", bundle: nil)
            masterViewController = supplierStoryBoard.instantiateViewController(withIdentifier: "SupplierMaster")
            (masterViewController as! SupplierMasterViewController).entitySetName = "Suppliers"
            func fetchSuppliers(_ completionHandler: @escaping ([Supplier]?, Error?) -> Void) {
                // Only request the first 20 values. If you want to modify the requested entities, you can do it here.
                let query = DataQuery().selectAll().top(20)
                do {
                    self.appDelegate.northwindEntities!.fetchSuppliers(matching: query) { suppliers, error in
                        if error == nil {
                            completionHandler(suppliers, nil)
                        } else {
                            completionHandler(nil, error)
                        }
                    }
                }
            }
            (masterViewController as! SupplierMasterViewController).loadEntitiesBlock = fetchSuppliers
            masterViewController.navigationItem.title = "Supplier"
        case .customerAndSuppliersByCities:
            let customerAndSuppliersByCityStoryBoard = UIStoryboard(name: "CustomerAndSuppliersByCity", bundle: nil)
            masterViewController = customerAndSuppliersByCityStoryBoard.instantiateViewController(withIdentifier: "CustomerAndSuppliersByCityMaster")
            (masterViewController as! CustomerAndSuppliersByCityMasterViewController).entitySetName = "CustomerAndSuppliersByCities"
            func fetchCustomerAndSuppliersByCities(_ completionHandler: @escaping ([CustomerAndSuppliersByCity]?, Error?) -> Void) {
                // Only request the first 20 values. If you want to modify the requested entities, you can do it here.
                let query = DataQuery().selectAll().top(20)
                do {
                    self.appDelegate.northwindEntities!.fetchCustomerAndSuppliersByCities(matching: query) { customerAndSuppliersByCities, error in
                        if error == nil {
                            completionHandler(customerAndSuppliersByCities, nil)
                        } else {
                            completionHandler(nil, error)
                        }
                    }
                }
            }
            (masterViewController as! CustomerAndSuppliersByCityMasterViewController).loadEntitiesBlock = fetchCustomerAndSuppliersByCities
            masterViewController.navigationItem.title = "CustomerAndSuppliersByCity"
        case .summaryOfSalesByQuarters:
            let summaryOfSalesByQuarterStoryBoard = UIStoryboard(name: "SummaryOfSalesByQuarter", bundle: nil)
            masterViewController = summaryOfSalesByQuarterStoryBoard.instantiateViewController(withIdentifier: "SummaryOfSalesByQuarterMaster")
            (masterViewController as! SummaryOfSalesByQuarterMasterViewController).entitySetName = "SummaryOfSalesByQuarters"
            func fetchSummaryOfSalesByQuarters(_ completionHandler: @escaping ([SummaryOfSalesByQuarter]?, Error?) -> Void) {
                // Only request the first 20 values. If you want to modify the requested entities, you can do it here.
                let query = DataQuery().selectAll().top(20)
                do {
                    self.appDelegate.northwindEntities!.fetchSummaryOfSalesByQuarters(matching: query) { summaryOfSalesByQuarters, error in
                        if error == nil {
                            completionHandler(summaryOfSalesByQuarters, nil)
                        } else {
                            completionHandler(nil, error)
                        }
                    }
                }
            }
            (masterViewController as! SummaryOfSalesByQuarterMasterViewController).loadEntitiesBlock = fetchSummaryOfSalesByQuarters
            masterViewController.navigationItem.title = "SummaryOfSalesByQuarter"
        case .products:
            let productStoryBoard = UIStoryboard(name: "Product", bundle: nil)
            masterViewController = productStoryBoard.instantiateViewController(withIdentifier: "ProductMaster")
            (masterViewController as! ProductMasterViewController).entitySetName = "Products"
            func fetchProducts(_ completionHandler: @escaping ([Product]?, Error?) -> Void) {
                // Only request the first 20 values. If you want to modify the requested entities, you can do it here.
                let query = DataQuery().selectAll().top(20)
                do {
                    self.appDelegate.northwindEntities!.fetchProducts(matching: query) { products, error in
                        if error == nil {
                            completionHandler(products, nil)
                        } else {
                            completionHandler(nil, error)
                        }
                    }
                }
            }
            (masterViewController as! ProductMasterViewController).loadEntitiesBlock = fetchProducts
            masterViewController.navigationItem.title = "Product"
        case .summaryOfSalesByYears:
            let summaryOfSalesByYearStoryBoard = UIStoryboard(name: "SummaryOfSalesByYear", bundle: nil)
            masterViewController = summaryOfSalesByYearStoryBoard.instantiateViewController(withIdentifier: "SummaryOfSalesByYearMaster")
            (masterViewController as! SummaryOfSalesByYearMasterViewController).entitySetName = "SummaryOfSalesByYears"
            func fetchSummaryOfSalesByYears(_ completionHandler: @escaping ([SummaryOfSalesByYear]?, Error?) -> Void) {
                // Only request the first 20 values. If you want to modify the requested entities, you can do it here.
                let query = DataQuery().selectAll().top(20)
                do {
                    self.appDelegate.northwindEntities!.fetchSummaryOfSalesByYears(matching: query) { summaryOfSalesByYears, error in
                        if error == nil {
                            completionHandler(summaryOfSalesByYears, nil)
                        } else {
                            completionHandler(nil, error)
                        }
                    }
                }
            }
            (masterViewController as! SummaryOfSalesByYearMasterViewController).loadEntitiesBlock = fetchSummaryOfSalesByYears
            masterViewController.navigationItem.title = "SummaryOfSalesByYear"
        case .salesTotalsByAmounts:
            let salesTotalsByAmountStoryBoard = UIStoryboard(name: "SalesTotalsByAmount", bundle: nil)
            masterViewController = salesTotalsByAmountStoryBoard.instantiateViewController(withIdentifier: "SalesTotalsByAmountMaster")
            (masterViewController as! SalesTotalsByAmountMasterViewController).entitySetName = "SalesTotalsByAmounts"
            func fetchSalesTotalsByAmounts(_ completionHandler: @escaping ([SalesTotalsByAmount]?, Error?) -> Void) {
                // Only request the first 20 values. If you want to modify the requested entities, you can do it here.
                let query = DataQuery().selectAll().top(20)
                do {
                    self.appDelegate.northwindEntities!.fetchSalesTotalsByAmounts(matching: query) { salesTotalsByAmounts, error in
                        if error == nil {
                            completionHandler(salesTotalsByAmounts, nil)
                        } else {
                            completionHandler(nil, error)
                        }
                    }
                }
            }
            (masterViewController as! SalesTotalsByAmountMasterViewController).loadEntitiesBlock = fetchSalesTotalsByAmounts
            masterViewController.navigationItem.title = "SalesTotalsByAmount"
        case .ordersQries:
            let ordersQryStoryBoard = UIStoryboard(name: "OrdersQry", bundle: nil)
            masterViewController = ordersQryStoryBoard.instantiateViewController(withIdentifier: "OrdersQryMaster")
            (masterViewController as! OrdersQryMasterViewController).entitySetName = "OrdersQries"
            func fetchOrdersQries(_ completionHandler: @escaping ([OrdersQry]?, Error?) -> Void) {
                // Only request the first 20 values. If you want to modify the requested entities, you can do it here.
                let query = DataQuery().selectAll().top(20)
                do {
                    self.appDelegate.northwindEntities!.fetchOrdersQries(matching: query) { ordersQries, error in
                        if error == nil {
                            completionHandler(ordersQries, nil)
                        } else {
                            completionHandler(nil, error)
                        }
                    }
                }
            }
            (masterViewController as! OrdersQryMasterViewController).loadEntitiesBlock = fetchOrdersQries
            masterViewController.navigationItem.title = "OrdersQry"
        case .categorySalesFor1997:
            let categorySalesFor1997StoryBoard = UIStoryboard(name: "CategorySalesFor1997", bundle: nil)
            masterViewController = categorySalesFor1997StoryBoard.instantiateViewController(withIdentifier: "CategorySalesFor1997Master")
            (masterViewController as! CategorySalesFor1997MasterViewController).entitySetName = "CategorySalesFor1997"
            func fetchCategorySalesFor1997(_ completionHandler: @escaping ([CategorySalesFor1997]?, Error?) -> Void) {
                // Only request the first 20 values. If you want to modify the requested entities, you can do it here.
                let query = DataQuery().selectAll().top(20)
                do {
                    self.appDelegate.northwindEntities!.fetchCategorySalesFor1997(matching: query) { categorySalesFor1997, error in
                        if error == nil {
                            completionHandler(categorySalesFor1997, nil)
                        } else {
                            completionHandler(nil, error)
                        }
                    }
                }
            }
            (masterViewController as! CategorySalesFor1997MasterViewController).loadEntitiesBlock = fetchCategorySalesFor1997
            masterViewController.navigationItem.title = "CategorySalesFor1997"
        case .productSalesFor1997:
            let productSalesFor1997StoryBoard = UIStoryboard(name: "ProductSalesFor1997", bundle: nil)
            masterViewController = productSalesFor1997StoryBoard.instantiateViewController(withIdentifier: "ProductSalesFor1997Master")
            (masterViewController as! ProductSalesFor1997MasterViewController).entitySetName = "ProductSalesFor1997"
            func fetchProductSalesFor1997(_ completionHandler: @escaping ([ProductSalesFor1997]?, Error?) -> Void) {
                // Only request the first 20 values. If you want to modify the requested entities, you can do it here.
                let query = DataQuery().selectAll().top(20)
                do {
                    self.appDelegate.northwindEntities!.fetchProductSalesFor1997(matching: query) { productSalesFor1997, error in
                        if error == nil {
                            completionHandler(productSalesFor1997, nil)
                        } else {
                            completionHandler(nil, error)
                        }
                    }
                }
            }
            (masterViewController as! ProductSalesFor1997MasterViewController).loadEntitiesBlock = fetchProductSalesFor1997
            masterViewController.navigationItem.title = "ProductSalesFor1997"
        case .orderSubtotals:
            let orderSubtotalStoryBoard = UIStoryboard(name: "OrderSubtotal", bundle: nil)
            masterViewController = orderSubtotalStoryBoard.instantiateViewController(withIdentifier: "OrderSubtotalMaster")
            (masterViewController as! OrderSubtotalMasterViewController).entitySetName = "OrderSubtotals"
            func fetchOrderSubtotals(_ completionHandler: @escaping ([OrderSubtotal]?, Error?) -> Void) {
                // Only request the first 20 values. If you want to modify the requested entities, you can do it here.
                let query = DataQuery().selectAll().top(20)
                do {
                    self.appDelegate.northwindEntities!.fetchOrderSubtotals(matching: query) { orderSubtotals, error in
                        if error == nil {
                            completionHandler(orderSubtotals, nil)
                        } else {
                            completionHandler(nil, error)
                        }
                    }
                }
            }
            (masterViewController as! OrderSubtotalMasterViewController).loadEntitiesBlock = fetchOrderSubtotals
            masterViewController.navigationItem.title = "OrderSubtotal"
        case .invoices:
            let invoiceStoryBoard = UIStoryboard(name: "Invoice", bundle: nil)
            masterViewController = invoiceStoryBoard.instantiateViewController(withIdentifier: "InvoiceMaster")
            (masterViewController as! InvoiceMasterViewController).entitySetName = "Invoices"
            func fetchInvoices(_ completionHandler: @escaping ([Invoice]?, Error?) -> Void) {
                // Only request the first 20 values. If you want to modify the requested entities, you can do it here.
                let query = DataQuery().selectAll().top(20)
                do {
                    self.appDelegate.northwindEntities!.fetchInvoices(matching: query) { invoices, error in
                        if error == nil {
                            completionHandler(invoices, nil)
                        } else {
                            completionHandler(nil, error)
                        }
                    }
                }
            }
            (masterViewController as! InvoiceMasterViewController).loadEntitiesBlock = fetchInvoices
            masterViewController.navigationItem.title = "Invoice"
        case .alphabeticalListOfProducts:
            let alphabeticalListOfProductStoryBoard = UIStoryboard(name: "AlphabeticalListOfProduct", bundle: nil)
            masterViewController = alphabeticalListOfProductStoryBoard.instantiateViewController(withIdentifier: "AlphabeticalListOfProductMaster")
            (masterViewController as! AlphabeticalListOfProductMasterViewController).entitySetName = "AlphabeticalListOfProducts"
            func fetchAlphabeticalListOfProducts(_ completionHandler: @escaping ([AlphabeticalListOfProduct]?, Error?) -> Void) {
                // Only request the first 20 values. If you want to modify the requested entities, you can do it here.
                let query = DataQuery().selectAll().top(20)
                do {
                    self.appDelegate.northwindEntities!.fetchAlphabeticalListOfProducts(matching: query) { alphabeticalListOfProducts, error in
                        if error == nil {
                            completionHandler(alphabeticalListOfProducts, nil)
                        } else {
                            completionHandler(nil, error)
                        }
                    }
                }
            }
            (masterViewController as! AlphabeticalListOfProductMasterViewController).loadEntitiesBlock = fetchAlphabeticalListOfProducts
            masterViewController.navigationItem.title = "AlphabeticalListOfProduct"
        case .territories:
            let territoryStoryBoard = UIStoryboard(name: "Territory", bundle: nil)
            masterViewController = territoryStoryBoard.instantiateViewController(withIdentifier: "TerritoryMaster")
            (masterViewController as! TerritoryMasterViewController).entitySetName = "Territories"
            func fetchTerritories(_ completionHandler: @escaping ([Territory]?, Error?) -> Void) {
                // Only request the first 20 values. If you want to modify the requested entities, you can do it here.
                let query = DataQuery().selectAll().top(20)
                do {
                    self.appDelegate.northwindEntities!.fetchTerritories(matching: query) { territories, error in
                        if error == nil {
                            completionHandler(territories, nil)
                        } else {
                            completionHandler(nil, error)
                        }
                    }
                }
            }
            (masterViewController as! TerritoryMasterViewController).loadEntitiesBlock = fetchTerritories
            masterViewController.navigationItem.title = "Territory"
        case .productsAboveAveragePrices:
            let productsAboveAveragePriceStoryBoard = UIStoryboard(name: "ProductsAboveAveragePrice", bundle: nil)
            masterViewController = productsAboveAveragePriceStoryBoard.instantiateViewController(withIdentifier: "ProductsAboveAveragePriceMaster")
            (masterViewController as! ProductsAboveAveragePriceMasterViewController).entitySetName = "ProductsAboveAveragePrices"
            func fetchProductsAboveAveragePrices(_ completionHandler: @escaping ([ProductsAboveAveragePrice]?, Error?) -> Void) {
                // Only request the first 20 values. If you want to modify the requested entities, you can do it here.
                let query = DataQuery().selectAll().top(20)
                do {
                    self.appDelegate.northwindEntities!.fetchProductsAboveAveragePrices(matching: query) { productsAboveAveragePrices, error in
                        if error == nil {
                            completionHandler(productsAboveAveragePrices, nil)
                        } else {
                            completionHandler(nil, error)
                        }
                    }
                }
            }
            (masterViewController as! ProductsAboveAveragePriceMasterViewController).loadEntitiesBlock = fetchProductsAboveAveragePrices
            masterViewController.navigationItem.title = "ProductsAboveAveragePrice"
        case .shippers:
            let shipperStoryBoard = UIStoryboard(name: "Shipper", bundle: nil)
            masterViewController = shipperStoryBoard.instantiateViewController(withIdentifier: "ShipperMaster")
            (masterViewController as! ShipperMasterViewController).entitySetName = "Shippers"
            func fetchShippers(_ completionHandler: @escaping ([Shipper]?, Error?) -> Void) {
                // Only request the first 20 values. If you want to modify the requested entities, you can do it here.
                let query = DataQuery().selectAll().top(20)
                do {
                    self.appDelegate.northwindEntities!.fetchShippers(matching: query) { shippers, error in
                        if error == nil {
                            completionHandler(shippers, nil)
                        } else {
                            completionHandler(nil, error)
                        }
                    }
                }
            }
            (masterViewController as! ShipperMasterViewController).loadEntitiesBlock = fetchShippers
            masterViewController.navigationItem.title = "Shipper"
        case .employees:
            let employeeStoryBoard = UIStoryboard(name: "Employee", bundle: nil)
            masterViewController = employeeStoryBoard.instantiateViewController(withIdentifier: "EmployeeMaster")
            (masterViewController as! EmployeeMasterViewController).entitySetName = "Employees"
            func fetchEmployees(_ completionHandler: @escaping ([Employee]?, Error?) -> Void) {
                // Only request the first 20 values. If you want to modify the requested entities, you can do it here.
                let query = DataQuery().selectAll().top(20)
                do {
                    self.appDelegate.northwindEntities!.fetchEmployees(matching: query) { employees, error in
                        if error == nil {
                            completionHandler(employees, nil)
                        } else {
                            completionHandler(nil, error)
                        }
                    }
                }
            }
            (masterViewController as! EmployeeMasterViewController).loadEntitiesBlock = fetchEmployees
            masterViewController.navigationItem.title = "Employee"
        case .categories:
            let categoryStoryBoard = UIStoryboard(name: "Category", bundle: nil)
            masterViewController = categoryStoryBoard.instantiateViewController(withIdentifier: "CategoryMaster")
            (masterViewController as! CategoryMasterViewController).entitySetName = "Categories"
            func fetchCategories(_ completionHandler: @escaping ([Category]?, Error?) -> Void) {
                // Only request the first 20 values. If you want to modify the requested entities, you can do it here.
                let query = DataQuery().selectAll().top(20)
                do {
                    self.appDelegate.northwindEntities!.fetchCategories(matching: query) { categories, error in
                        if error == nil {
                            completionHandler(categories, nil)
                        } else {
                            completionHandler(nil, error)
                        }
                    }
                }
            }
            (masterViewController as! CategoryMasterViewController).loadEntitiesBlock = fetchCategories
            masterViewController.navigationItem.title = "Category"
        case .customerDemographics:
            let customerDemographicStoryBoard = UIStoryboard(name: "CustomerDemographic", bundle: nil)
            masterViewController = customerDemographicStoryBoard.instantiateViewController(withIdentifier: "CustomerDemographicMaster")
            (masterViewController as! CustomerDemographicMasterViewController).entitySetName = "CustomerDemographics"
            func fetchCustomerDemographics(_ completionHandler: @escaping ([CustomerDemographic]?, Error?) -> Void) {
                // Only request the first 20 values. If you want to modify the requested entities, you can do it here.
                let query = DataQuery().selectAll().top(20)
                do {
                    self.appDelegate.northwindEntities!.fetchCustomerDemographics(matching: query) { customerDemographics, error in
                        if error == nil {
                            completionHandler(customerDemographics, nil)
                        } else {
                            completionHandler(nil, error)
                        }
                    }
                }
            }
            (masterViewController as! CustomerDemographicMasterViewController).loadEntitiesBlock = fetchCustomerDemographics
            masterViewController.navigationItem.title = "CustomerDemographic"
        case .currentProductLists:
            let currentProductListStoryBoard = UIStoryboard(name: "CurrentProductList", bundle: nil)
            masterViewController = currentProductListStoryBoard.instantiateViewController(withIdentifier: "CurrentProductListMaster")
            (masterViewController as! CurrentProductListMasterViewController).entitySetName = "CurrentProductLists"
            func fetchCurrentProductLists(_ completionHandler: @escaping ([CurrentProductList]?, Error?) -> Void) {
                // Only request the first 20 values. If you want to modify the requested entities, you can do it here.
                let query = DataQuery().selectAll().top(20)
                do {
                    self.appDelegate.northwindEntities!.fetchCurrentProductLists(matching: query) { currentProductLists, error in
                        if error == nil {
                            completionHandler(currentProductLists, nil)
                        } else {
                            completionHandler(nil, error)
                        }
                    }
                }
            }
            (masterViewController as! CurrentProductListMasterViewController).loadEntitiesBlock = fetchCurrentProductLists
            masterViewController.navigationItem.title = "CurrentProductList"
        case .salesByCategories:
            let salesByCategoryStoryBoard = UIStoryboard(name: "SalesByCategory", bundle: nil)
            masterViewController = salesByCategoryStoryBoard.instantiateViewController(withIdentifier: "SalesByCategoryMaster")
            (masterViewController as! SalesByCategoryMasterViewController).entitySetName = "SalesByCategories"
            func fetchSalesByCategories(_ completionHandler: @escaping ([SalesByCategory]?, Error?) -> Void) {
                // Only request the first 20 values. If you want to modify the requested entities, you can do it here.
                let query = DataQuery().selectAll().top(20)
                do {
                    self.appDelegate.northwindEntities!.fetchSalesByCategories(matching: query) { salesByCategories, error in
                        if error == nil {
                            completionHandler(salesByCategories, nil)
                        } else {
                            completionHandler(nil, error)
                        }
                    }
                }
            }
            (masterViewController as! SalesByCategoryMasterViewController).loadEntitiesBlock = fetchSalesByCategories
            masterViewController.navigationItem.title = "SalesByCategory"
        case .orderDetails:
            let orderDetailStoryBoard = UIStoryboard(name: "OrderDetail", bundle: nil)
            masterViewController = orderDetailStoryBoard.instantiateViewController(withIdentifier: "OrderDetailMaster")
            (masterViewController as! OrderDetailMasterViewController).entitySetName = "OrderDetails"
            func fetchOrderDetails(_ completionHandler: @escaping ([OrderDetail]?, Error?) -> Void) {
                // Only request the first 20 values. If you want to modify the requested entities, you can do it here.
                let query = DataQuery().selectAll().top(20)
                do {
                    self.appDelegate.northwindEntities!.fetchOrderDetails(matching: query) { orderDetails, error in
                        if error == nil {
                            completionHandler(orderDetails, nil)
                        } else {
                            completionHandler(nil, error)
                        }
                    }
                }
            }
            (masterViewController as! OrderDetailMasterViewController).loadEntitiesBlock = fetchOrderDetails
            masterViewController.navigationItem.title = "OrderDetail"
        case .none:
            masterViewController = UIViewController()
        }

        // Load the NavigationController and present with the EntityType specific ViewController
        let mainStoryBoard = UIStoryboard(name: "Main", bundle: nil)
        let rightNavigationController = mainStoryBoard.instantiateViewController(withIdentifier: "RightNavigationController") as! UINavigationController
        rightNavigationController.viewControllers = [masterViewController]
        self.splitViewController?.showDetailViewController(rightNavigationController, sender: nil)
    }

    // MARK: - Handle highlighting of selected cell

    private func makeSelection() {
        if let selectedIndex = selectedIndex {
            self.tableView.selectRow(at: selectedIndex, animated: true, scrollPosition: .none)
            self.tableView.scrollToRow(at: selectedIndex, at: .none, animated: true)
        } else {
            self.selectDefault()
        }
    }

    private func selectDefault() {
        // Automatically select first element if we have two panels (iPhone plus and iPad only)
        if self.splitViewController!.isCollapsed || self.appDelegate.northwindEntities == nil {
            return
        }
        let indexPath = IndexPath(row: 0, section: 0)
        self.tableView.selectRow(at: indexPath, animated: true, scrollPosition: .middle)
        self.collectionSelected(at: indexPath)
    }
}
