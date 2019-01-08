// # Proxy Compiler 18.9.4-973a4d-20181128

import Foundation
import SAPOData

open class NorthwindEntities<Provider: DataServiceProvider>: DataService<Provider> {
    public override init(provider: Provider) {
        super.init(provider: provider)
        self.provider.metadata = NorthwindEntitiesMetadata.document
    }

    @available(swift, deprecated: 4.0, renamed: "fetchAlphabeticalListOfProducts")
    open func alphabeticalListOfProducts(query: DataQuery = DataQuery()) throws -> Array<AlphabeticalListOfProduct> {
        return try self.fetchAlphabeticalListOfProducts(matching: query)
    }

    @available(swift, deprecated: 4.0, renamed: "fetchAlphabeticalListOfProducts")
    open func alphabeticalListOfProducts(query: DataQuery = DataQuery(), completionHandler: @escaping (Array<AlphabeticalListOfProduct>?, Error?) -> Void) {
        self.fetchAlphabeticalListOfProducts(matching: query, headers: nil, options: nil, completionHandler: completionHandler)
    }

    @available(swift, deprecated: 4.0, renamed: "fetchCategories")
    open func categories(query: DataQuery = DataQuery()) throws -> Array<Category> {
        return try self.fetchCategories(matching: query)
    }

    @available(swift, deprecated: 4.0, renamed: "fetchCategories")
    open func categories(query: DataQuery = DataQuery(), completionHandler: @escaping (Array<Category>?, Error?) -> Void) {
        self.fetchCategories(matching: query, headers: nil, options: nil, completionHandler: completionHandler)
    }

    @available(swift, deprecated: 4.0, renamed: "fetchCategorySalesFor1997")
    open func categorySalesFor1997(query: DataQuery = DataQuery()) throws -> Array<CategorySalesFor1997> {
        return try self.fetchCategorySalesFor1997(matching: query)
    }

    @available(swift, deprecated: 4.0, renamed: "fetchCategorySalesFor1997")
    open func categorySalesFor1997(query: DataQuery = DataQuery(), completionHandler: @escaping (Array<CategorySalesFor1997>?, Error?) -> Void) {
        self.fetchCategorySalesFor1997(matching: query, headers: nil, options: nil, completionHandler: completionHandler)
    }

    @available(swift, deprecated: 4.0, renamed: "fetchCurrentProductLists")
    open func currentProductLists(query: DataQuery = DataQuery()) throws -> Array<CurrentProductList> {
        return try self.fetchCurrentProductLists(matching: query)
    }

    @available(swift, deprecated: 4.0, renamed: "fetchCurrentProductLists")
    open func currentProductLists(query: DataQuery = DataQuery(), completionHandler: @escaping (Array<CurrentProductList>?, Error?) -> Void) {
        self.fetchCurrentProductLists(matching: query, headers: nil, options: nil, completionHandler: completionHandler)
    }

    @available(swift, deprecated: 4.0, renamed: "fetchCustomerAndSuppliersByCities")
    open func customerAndSuppliersByCities(query: DataQuery = DataQuery()) throws -> Array<CustomerAndSuppliersByCity> {
        return try self.fetchCustomerAndSuppliersByCities(matching: query)
    }

    @available(swift, deprecated: 4.0, renamed: "fetchCustomerAndSuppliersByCities")
    open func customerAndSuppliersByCities(query: DataQuery = DataQuery(), completionHandler: @escaping (Array<CustomerAndSuppliersByCity>?, Error?) -> Void) {
        self.fetchCustomerAndSuppliersByCities(matching: query, headers: nil, options: nil, completionHandler: completionHandler)
    }

    @available(swift, deprecated: 4.0, renamed: "fetchCustomerDemographics")
    open func customerDemographics(query: DataQuery = DataQuery()) throws -> Array<CustomerDemographic> {
        return try self.fetchCustomerDemographics(matching: query)
    }

    @available(swift, deprecated: 4.0, renamed: "fetchCustomerDemographics")
    open func customerDemographics(query: DataQuery = DataQuery(), completionHandler: @escaping (Array<CustomerDemographic>?, Error?) -> Void) {
        self.fetchCustomerDemographics(matching: query, headers: nil, options: nil, completionHandler: completionHandler)
    }

    @available(swift, deprecated: 4.0, renamed: "fetchCustomers")
    open func customers(query: DataQuery = DataQuery()) throws -> Array<Customer> {
        return try self.fetchCustomers(matching: query)
    }

    @available(swift, deprecated: 4.0, renamed: "fetchCustomers")
    open func customers(query: DataQuery = DataQuery(), completionHandler: @escaping (Array<Customer>?, Error?) -> Void) {
        self.fetchCustomers(matching: query, headers: nil, options: nil, completionHandler: completionHandler)
    }

    @available(swift, deprecated: 4.0, renamed: "fetchEmployees")
    open func employees(query: DataQuery = DataQuery()) throws -> Array<Employee> {
        return try self.fetchEmployees(matching: query)
    }

    @available(swift, deprecated: 4.0, renamed: "fetchEmployees")
    open func employees(query: DataQuery = DataQuery(), completionHandler: @escaping (Array<Employee>?, Error?) -> Void) {
        self.fetchEmployees(matching: query, headers: nil, options: nil, completionHandler: completionHandler)
    }

    open func fetchAlphabeticalListOfProduct(matching query: DataQuery, headers: HTTPHeaders? = nil, options: RequestOptions? = nil) throws -> AlphabeticalListOfProduct {
        let var_headers: HTTPHeaders = HTTPHeaders.emptyIfNull(headers: headers)
        let var_options: RequestOptions = try RequestOptions.noneIfNull(options: options)
        return try CastRequired<AlphabeticalListOfProduct>.from(self.executeQuery(query.fromDefault(NorthwindEntitiesMetadata.EntitySets.alphabeticalListOfProducts), headers: var_headers, options: var_options).requiredEntity())
    }

    open func fetchAlphabeticalListOfProduct(matching query: DataQuery, headers: HTTPHeaders? = nil, options: RequestOptions? = nil, completionHandler: @escaping (AlphabeticalListOfProduct?, Error?) -> Void) {
        self.addBackgroundOperationForFunction {
            do {
                let result: AlphabeticalListOfProduct = try self.fetchAlphabeticalListOfProduct(matching: query, headers: headers, options: options)
                self.completionQueue.addOperation {
                    completionHandler(result, nil)
                }
            } catch let error {
                self.completionQueue.addOperation {
                    completionHandler(nil, error)
                }
            }
        }
    }

    open func fetchAlphabeticalListOfProducts(matching query: DataQuery? = nil, headers: HTTPHeaders? = nil, options: RequestOptions? = nil) throws -> Array<AlphabeticalListOfProduct> {
        let var_query: DataQuery = DataQuery.newIfNull(query: query)
        let var_headers: HTTPHeaders = HTTPHeaders.emptyIfNull(headers: headers)
        let var_options: RequestOptions = try RequestOptions.noneIfNull(options: options)
        return try AlphabeticalListOfProduct.array(from: self.executeQuery(var_query.fromDefault(NorthwindEntitiesMetadata.EntitySets.alphabeticalListOfProducts), headers: var_headers, options: var_options).entityList())
    }

    open func fetchAlphabeticalListOfProducts(matching query: DataQuery = DataQuery(), headers: HTTPHeaders? = nil, options: RequestOptions? = nil, completionHandler: @escaping (Array<AlphabeticalListOfProduct>?, Error?) -> Void) {
        self.addBackgroundOperationForFunction {
            do {
                let result: Array<AlphabeticalListOfProduct> = try self.fetchAlphabeticalListOfProducts(matching: query, headers: headers, options: options)
                self.completionQueue.addOperation {
                    completionHandler(result, nil)
                }
            } catch let error {
                self.completionQueue.addOperation {
                    completionHandler(nil, error)
                }
            }
        }
    }

    open func fetchCategories(matching query: DataQuery? = nil, headers: HTTPHeaders? = nil, options: RequestOptions? = nil) throws -> Array<Category> {
        let var_query: DataQuery = DataQuery.newIfNull(query: query)
        let var_headers: HTTPHeaders = HTTPHeaders.emptyIfNull(headers: headers)
        let var_options: RequestOptions = try RequestOptions.noneIfNull(options: options)
        return try Category.array(from: self.executeQuery(var_query.fromDefault(NorthwindEntitiesMetadata.EntitySets.categories), headers: var_headers, options: var_options).entityList())
    }

    open func fetchCategories(matching query: DataQuery = DataQuery(), headers: HTTPHeaders? = nil, options: RequestOptions? = nil, completionHandler: @escaping (Array<Category>?, Error?) -> Void) {
        self.addBackgroundOperationForFunction {
            do {
                let result: Array<Category> = try self.fetchCategories(matching: query, headers: headers, options: options)
                self.completionQueue.addOperation {
                    completionHandler(result, nil)
                }
            } catch let error {
                self.completionQueue.addOperation {
                    completionHandler(nil, error)
                }
            }
        }
    }

    open func fetchCategory(matching query: DataQuery, headers: HTTPHeaders? = nil, options: RequestOptions? = nil) throws -> Category {
        let var_headers: HTTPHeaders = HTTPHeaders.emptyIfNull(headers: headers)
        let var_options: RequestOptions = try RequestOptions.noneIfNull(options: options)
        return try CastRequired<Category>.from(self.executeQuery(query.fromDefault(NorthwindEntitiesMetadata.EntitySets.categories), headers: var_headers, options: var_options).requiredEntity())
    }

    open func fetchCategory(matching query: DataQuery, headers: HTTPHeaders? = nil, options: RequestOptions? = nil, completionHandler: @escaping (Category?, Error?) -> Void) {
        self.addBackgroundOperationForFunction {
            do {
                let result: Category = try self.fetchCategory(matching: query, headers: headers, options: options)
                self.completionQueue.addOperation {
                    completionHandler(result, nil)
                }
            } catch let error {
                self.completionQueue.addOperation {
                    completionHandler(nil, error)
                }
            }
        }
    }

    open func fetchCategorySalesFor1997(matching query: DataQuery? = nil, headers: HTTPHeaders? = nil, options: RequestOptions? = nil) throws -> Array<CategorySalesFor1997> {
        let var_query: DataQuery = DataQuery.newIfNull(query: query)
        let var_headers: HTTPHeaders = HTTPHeaders.emptyIfNull(headers: headers)
        let var_options: RequestOptions = try RequestOptions.noneIfNull(options: options)
        return try CategorySalesFor1997.array(from: self.executeQuery(var_query.fromDefault(NorthwindEntitiesMetadata.EntitySets.categorySalesFor1997), headers: var_headers, options: var_options).entityList())
    }

    open func fetchCategorySalesFor1997(matching query: DataQuery = DataQuery(), headers: HTTPHeaders? = nil, options: RequestOptions? = nil, completionHandler: @escaping (Array<CategorySalesFor1997>?, Error?) -> Void) {
        self.addBackgroundOperationForFunction {
            do {
                let result: Array<CategorySalesFor1997> = try self.fetchCategorySalesFor1997(matching: query, headers: headers, options: options)
                self.completionQueue.addOperation {
                    completionHandler(result, nil)
                }
            } catch let error {
                self.completionQueue.addOperation {
                    completionHandler(nil, error)
                }
            }
        }
    }

    open func fetchCategorySalesFor1997_1(matching query: DataQuery, headers: HTTPHeaders? = nil, options: RequestOptions? = nil) throws -> CategorySalesFor1997 {
        let var_headers: HTTPHeaders = HTTPHeaders.emptyIfNull(headers: headers)
        let var_options: RequestOptions = try RequestOptions.noneIfNull(options: options)
        return try CastRequired<CategorySalesFor1997>.from(self.executeQuery(query.fromDefault(NorthwindEntitiesMetadata.EntitySets.categorySalesFor1997), headers: var_headers, options: var_options).requiredEntity())
    }

    open func fetchCategorySalesFor1997_1(matching query: DataQuery, headers: HTTPHeaders? = nil, options: RequestOptions? = nil, completionHandler: @escaping (CategorySalesFor1997?, Error?) -> Void) {
        self.addBackgroundOperationForFunction {
            do {
                let result: CategorySalesFor1997 = try self.fetchCategorySalesFor1997_1(matching: query, headers: headers, options: options)
                self.completionQueue.addOperation {
                    completionHandler(result, nil)
                }
            } catch let error {
                self.completionQueue.addOperation {
                    completionHandler(nil, error)
                }
            }
        }
    }

    open func fetchCurrentProductList(matching query: DataQuery, headers: HTTPHeaders? = nil, options: RequestOptions? = nil) throws -> CurrentProductList {
        let var_headers: HTTPHeaders = HTTPHeaders.emptyIfNull(headers: headers)
        let var_options: RequestOptions = try RequestOptions.noneIfNull(options: options)
        return try CastRequired<CurrentProductList>.from(self.executeQuery(query.fromDefault(NorthwindEntitiesMetadata.EntitySets.currentProductLists), headers: var_headers, options: var_options).requiredEntity())
    }

    open func fetchCurrentProductList(matching query: DataQuery, headers: HTTPHeaders? = nil, options: RequestOptions? = nil, completionHandler: @escaping (CurrentProductList?, Error?) -> Void) {
        self.addBackgroundOperationForFunction {
            do {
                let result: CurrentProductList = try self.fetchCurrentProductList(matching: query, headers: headers, options: options)
                self.completionQueue.addOperation {
                    completionHandler(result, nil)
                }
            } catch let error {
                self.completionQueue.addOperation {
                    completionHandler(nil, error)
                }
            }
        }
    }

    open func fetchCurrentProductLists(matching query: DataQuery? = nil, headers: HTTPHeaders? = nil, options: RequestOptions? = nil) throws -> Array<CurrentProductList> {
        let var_query: DataQuery = DataQuery.newIfNull(query: query)
        let var_headers: HTTPHeaders = HTTPHeaders.emptyIfNull(headers: headers)
        let var_options: RequestOptions = try RequestOptions.noneIfNull(options: options)
        return try CurrentProductList.array(from: self.executeQuery(var_query.fromDefault(NorthwindEntitiesMetadata.EntitySets.currentProductLists), headers: var_headers, options: var_options).entityList())
    }

    open func fetchCurrentProductLists(matching query: DataQuery = DataQuery(), headers: HTTPHeaders? = nil, options: RequestOptions? = nil, completionHandler: @escaping (Array<CurrentProductList>?, Error?) -> Void) {
        self.addBackgroundOperationForFunction {
            do {
                let result: Array<CurrentProductList> = try self.fetchCurrentProductLists(matching: query, headers: headers, options: options)
                self.completionQueue.addOperation {
                    completionHandler(result, nil)
                }
            } catch let error {
                self.completionQueue.addOperation {
                    completionHandler(nil, error)
                }
            }
        }
    }

    open func fetchCustomer(matching query: DataQuery, headers: HTTPHeaders? = nil, options: RequestOptions? = nil) throws -> Customer {
        let var_headers: HTTPHeaders = HTTPHeaders.emptyIfNull(headers: headers)
        let var_options: RequestOptions = try RequestOptions.noneIfNull(options: options)
        return try CastRequired<Customer>.from(self.executeQuery(query.fromDefault(NorthwindEntitiesMetadata.EntitySets.customers), headers: var_headers, options: var_options).requiredEntity())
    }

    open func fetchCustomer(matching query: DataQuery, headers: HTTPHeaders? = nil, options: RequestOptions? = nil, completionHandler: @escaping (Customer?, Error?) -> Void) {
        self.addBackgroundOperationForFunction {
            do {
                let result: Customer = try self.fetchCustomer(matching: query, headers: headers, options: options)
                self.completionQueue.addOperation {
                    completionHandler(result, nil)
                }
            } catch let error {
                self.completionQueue.addOperation {
                    completionHandler(nil, error)
                }
            }
        }
    }

    open func fetchCustomerAndSuppliersByCities(matching query: DataQuery? = nil, headers: HTTPHeaders? = nil, options: RequestOptions? = nil) throws -> Array<CustomerAndSuppliersByCity> {
        let var_query: DataQuery = DataQuery.newIfNull(query: query)
        let var_headers: HTTPHeaders = HTTPHeaders.emptyIfNull(headers: headers)
        let var_options: RequestOptions = try RequestOptions.noneIfNull(options: options)
        return try CustomerAndSuppliersByCity.array(from: self.executeQuery(var_query.fromDefault(NorthwindEntitiesMetadata.EntitySets.customerAndSuppliersByCities), headers: var_headers, options: var_options).entityList())
    }

    open func fetchCustomerAndSuppliersByCities(matching query: DataQuery = DataQuery(), headers: HTTPHeaders? = nil, options: RequestOptions? = nil, completionHandler: @escaping (Array<CustomerAndSuppliersByCity>?, Error?) -> Void) {
        self.addBackgroundOperationForFunction {
            do {
                let result: Array<CustomerAndSuppliersByCity> = try self.fetchCustomerAndSuppliersByCities(matching: query, headers: headers, options: options)
                self.completionQueue.addOperation {
                    completionHandler(result, nil)
                }
            } catch let error {
                self.completionQueue.addOperation {
                    completionHandler(nil, error)
                }
            }
        }
    }

    open func fetchCustomerAndSuppliersByCity(matching query: DataQuery, headers: HTTPHeaders? = nil, options: RequestOptions? = nil) throws -> CustomerAndSuppliersByCity {
        let var_headers: HTTPHeaders = HTTPHeaders.emptyIfNull(headers: headers)
        let var_options: RequestOptions = try RequestOptions.noneIfNull(options: options)
        return try CastRequired<CustomerAndSuppliersByCity>.from(self.executeQuery(query.fromDefault(NorthwindEntitiesMetadata.EntitySets.customerAndSuppliersByCities), headers: var_headers, options: var_options).requiredEntity())
    }

    open func fetchCustomerAndSuppliersByCity(matching query: DataQuery, headers: HTTPHeaders? = nil, options: RequestOptions? = nil, completionHandler: @escaping (CustomerAndSuppliersByCity?, Error?) -> Void) {
        self.addBackgroundOperationForFunction {
            do {
                let result: CustomerAndSuppliersByCity = try self.fetchCustomerAndSuppliersByCity(matching: query, headers: headers, options: options)
                self.completionQueue.addOperation {
                    completionHandler(result, nil)
                }
            } catch let error {
                self.completionQueue.addOperation {
                    completionHandler(nil, error)
                }
            }
        }
    }

    open func fetchCustomerDemographic(matching query: DataQuery, headers: HTTPHeaders? = nil, options: RequestOptions? = nil) throws -> CustomerDemographic {
        let var_headers: HTTPHeaders = HTTPHeaders.emptyIfNull(headers: headers)
        let var_options: RequestOptions = try RequestOptions.noneIfNull(options: options)
        return try CastRequired<CustomerDemographic>.from(self.executeQuery(query.fromDefault(NorthwindEntitiesMetadata.EntitySets.customerDemographics), headers: var_headers, options: var_options).requiredEntity())
    }

    open func fetchCustomerDemographic(matching query: DataQuery, headers: HTTPHeaders? = nil, options: RequestOptions? = nil, completionHandler: @escaping (CustomerDemographic?, Error?) -> Void) {
        self.addBackgroundOperationForFunction {
            do {
                let result: CustomerDemographic = try self.fetchCustomerDemographic(matching: query, headers: headers, options: options)
                self.completionQueue.addOperation {
                    completionHandler(result, nil)
                }
            } catch let error {
                self.completionQueue.addOperation {
                    completionHandler(nil, error)
                }
            }
        }
    }

    open func fetchCustomerDemographics(matching query: DataQuery? = nil, headers: HTTPHeaders? = nil, options: RequestOptions? = nil) throws -> Array<CustomerDemographic> {
        let var_query: DataQuery = DataQuery.newIfNull(query: query)
        let var_headers: HTTPHeaders = HTTPHeaders.emptyIfNull(headers: headers)
        let var_options: RequestOptions = try RequestOptions.noneIfNull(options: options)
        return try CustomerDemographic.array(from: self.executeQuery(var_query.fromDefault(NorthwindEntitiesMetadata.EntitySets.customerDemographics), headers: var_headers, options: var_options).entityList())
    }

    open func fetchCustomerDemographics(matching query: DataQuery = DataQuery(), headers: HTTPHeaders? = nil, options: RequestOptions? = nil, completionHandler: @escaping (Array<CustomerDemographic>?, Error?) -> Void) {
        self.addBackgroundOperationForFunction {
            do {
                let result: Array<CustomerDemographic> = try self.fetchCustomerDemographics(matching: query, headers: headers, options: options)
                self.completionQueue.addOperation {
                    completionHandler(result, nil)
                }
            } catch let error {
                self.completionQueue.addOperation {
                    completionHandler(nil, error)
                }
            }
        }
    }

    open func fetchCustomers(matching query: DataQuery? = nil, headers: HTTPHeaders? = nil, options: RequestOptions? = nil) throws -> Array<Customer> {
        let var_query: DataQuery = DataQuery.newIfNull(query: query)
        let var_headers: HTTPHeaders = HTTPHeaders.emptyIfNull(headers: headers)
        let var_options: RequestOptions = try RequestOptions.noneIfNull(options: options)
        return try Customer.array(from: self.executeQuery(var_query.fromDefault(NorthwindEntitiesMetadata.EntitySets.customers), headers: var_headers, options: var_options).entityList())
    }

    open func fetchCustomers(matching query: DataQuery = DataQuery(), headers: HTTPHeaders? = nil, options: RequestOptions? = nil, completionHandler: @escaping (Array<Customer>?, Error?) -> Void) {
        self.addBackgroundOperationForFunction {
            do {
                let result: Array<Customer> = try self.fetchCustomers(matching: query, headers: headers, options: options)
                self.completionQueue.addOperation {
                    completionHandler(result, nil)
                }
            } catch let error {
                self.completionQueue.addOperation {
                    completionHandler(nil, error)
                }
            }
        }
    }

    open func fetchEmployee(matching query: DataQuery, headers: HTTPHeaders? = nil, options: RequestOptions? = nil) throws -> Employee {
        let var_headers: HTTPHeaders = HTTPHeaders.emptyIfNull(headers: headers)
        let var_options: RequestOptions = try RequestOptions.noneIfNull(options: options)
        return try CastRequired<Employee>.from(self.executeQuery(query.fromDefault(NorthwindEntitiesMetadata.EntitySets.employees), headers: var_headers, options: var_options).requiredEntity())
    }

    open func fetchEmployee(matching query: DataQuery, headers: HTTPHeaders? = nil, options: RequestOptions? = nil, completionHandler: @escaping (Employee?, Error?) -> Void) {
        self.addBackgroundOperationForFunction {
            do {
                let result: Employee = try self.fetchEmployee(matching: query, headers: headers, options: options)
                self.completionQueue.addOperation {
                    completionHandler(result, nil)
                }
            } catch let error {
                self.completionQueue.addOperation {
                    completionHandler(nil, error)
                }
            }
        }
    }

    open func fetchEmployees(matching query: DataQuery? = nil, headers: HTTPHeaders? = nil, options: RequestOptions? = nil) throws -> Array<Employee> {
        let var_query: DataQuery = DataQuery.newIfNull(query: query)
        let var_headers: HTTPHeaders = HTTPHeaders.emptyIfNull(headers: headers)
        let var_options: RequestOptions = try RequestOptions.noneIfNull(options: options)
        return try Employee.array(from: self.executeQuery(var_query.fromDefault(NorthwindEntitiesMetadata.EntitySets.employees), headers: var_headers, options: var_options).entityList())
    }

    open func fetchEmployees(matching query: DataQuery = DataQuery(), headers: HTTPHeaders? = nil, options: RequestOptions? = nil, completionHandler: @escaping (Array<Employee>?, Error?) -> Void) {
        self.addBackgroundOperationForFunction {
            do {
                let result: Array<Employee> = try self.fetchEmployees(matching: query, headers: headers, options: options)
                self.completionQueue.addOperation {
                    completionHandler(result, nil)
                }
            } catch let error {
                self.completionQueue.addOperation {
                    completionHandler(nil, error)
                }
            }
        }
    }

    open func fetchInvoice(matching query: DataQuery, headers: HTTPHeaders? = nil, options: RequestOptions? = nil) throws -> Invoice {
        let var_headers: HTTPHeaders = HTTPHeaders.emptyIfNull(headers: headers)
        let var_options: RequestOptions = try RequestOptions.noneIfNull(options: options)
        return try CastRequired<Invoice>.from(self.executeQuery(query.fromDefault(NorthwindEntitiesMetadata.EntitySets.invoices), headers: var_headers, options: var_options).requiredEntity())
    }

    open func fetchInvoice(matching query: DataQuery, headers: HTTPHeaders? = nil, options: RequestOptions? = nil, completionHandler: @escaping (Invoice?, Error?) -> Void) {
        self.addBackgroundOperationForFunction {
            do {
                let result: Invoice = try self.fetchInvoice(matching: query, headers: headers, options: options)
                self.completionQueue.addOperation {
                    completionHandler(result, nil)
                }
            } catch let error {
                self.completionQueue.addOperation {
                    completionHandler(nil, error)
                }
            }
        }
    }

    open func fetchInvoices(matching query: DataQuery? = nil, headers: HTTPHeaders? = nil, options: RequestOptions? = nil) throws -> Array<Invoice> {
        let var_query: DataQuery = DataQuery.newIfNull(query: query)
        let var_headers: HTTPHeaders = HTTPHeaders.emptyIfNull(headers: headers)
        let var_options: RequestOptions = try RequestOptions.noneIfNull(options: options)
        return try Invoice.array(from: self.executeQuery(var_query.fromDefault(NorthwindEntitiesMetadata.EntitySets.invoices), headers: var_headers, options: var_options).entityList())
    }

    open func fetchInvoices(matching query: DataQuery = DataQuery(), headers: HTTPHeaders? = nil, options: RequestOptions? = nil, completionHandler: @escaping (Array<Invoice>?, Error?) -> Void) {
        self.addBackgroundOperationForFunction {
            do {
                let result: Array<Invoice> = try self.fetchInvoices(matching: query, headers: headers, options: options)
                self.completionQueue.addOperation {
                    completionHandler(result, nil)
                }
            } catch let error {
                self.completionQueue.addOperation {
                    completionHandler(nil, error)
                }
            }
        }
    }

    open func fetchOrder(matching query: DataQuery, headers: HTTPHeaders? = nil, options: RequestOptions? = nil) throws -> Order {
        let var_headers: HTTPHeaders = HTTPHeaders.emptyIfNull(headers: headers)
        let var_options: RequestOptions = try RequestOptions.noneIfNull(options: options)
        return try CastRequired<Order>.from(self.executeQuery(query.fromDefault(NorthwindEntitiesMetadata.EntitySets.orders), headers: var_headers, options: var_options).requiredEntity())
    }

    open func fetchOrder(matching query: DataQuery, headers: HTTPHeaders? = nil, options: RequestOptions? = nil, completionHandler: @escaping (Order?, Error?) -> Void) {
        self.addBackgroundOperationForFunction {
            do {
                let result: Order = try self.fetchOrder(matching: query, headers: headers, options: options)
                self.completionQueue.addOperation {
                    completionHandler(result, nil)
                }
            } catch let error {
                self.completionQueue.addOperation {
                    completionHandler(nil, error)
                }
            }
        }
    }

    open func fetchOrderDetail(matching query: DataQuery, headers: HTTPHeaders? = nil, options: RequestOptions? = nil) throws -> OrderDetail {
        let var_headers: HTTPHeaders = HTTPHeaders.emptyIfNull(headers: headers)
        let var_options: RequestOptions = try RequestOptions.noneIfNull(options: options)
        return try CastRequired<OrderDetail>.from(self.executeQuery(query.fromDefault(NorthwindEntitiesMetadata.EntitySets.orderDetails), headers: var_headers, options: var_options).requiredEntity())
    }

    open func fetchOrderDetail(matching query: DataQuery, headers: HTTPHeaders? = nil, options: RequestOptions? = nil, completionHandler: @escaping (OrderDetail?, Error?) -> Void) {
        self.addBackgroundOperationForFunction {
            do {
                let result: OrderDetail = try self.fetchOrderDetail(matching: query, headers: headers, options: options)
                self.completionQueue.addOperation {
                    completionHandler(result, nil)
                }
            } catch let error {
                self.completionQueue.addOperation {
                    completionHandler(nil, error)
                }
            }
        }
    }

    open func fetchOrderDetails(matching query: DataQuery? = nil, headers: HTTPHeaders? = nil, options: RequestOptions? = nil) throws -> Array<OrderDetail> {
        let var_query: DataQuery = DataQuery.newIfNull(query: query)
        let var_headers: HTTPHeaders = HTTPHeaders.emptyIfNull(headers: headers)
        let var_options: RequestOptions = try RequestOptions.noneIfNull(options: options)
        return try OrderDetail.array(from: self.executeQuery(var_query.fromDefault(NorthwindEntitiesMetadata.EntitySets.orderDetails), headers: var_headers, options: var_options).entityList())
    }

    open func fetchOrderDetails(matching query: DataQuery = DataQuery(), headers: HTTPHeaders? = nil, options: RequestOptions? = nil, completionHandler: @escaping (Array<OrderDetail>?, Error?) -> Void) {
        self.addBackgroundOperationForFunction {
            do {
                let result: Array<OrderDetail> = try self.fetchOrderDetails(matching: query, headers: headers, options: options)
                self.completionQueue.addOperation {
                    completionHandler(result, nil)
                }
            } catch let error {
                self.completionQueue.addOperation {
                    completionHandler(nil, error)
                }
            }
        }
    }

    open func fetchOrderDetailsExtended(matching query: DataQuery, headers: HTTPHeaders? = nil, options: RequestOptions? = nil) throws -> OrderDetailsExtended {
        let var_headers: HTTPHeaders = HTTPHeaders.emptyIfNull(headers: headers)
        let var_options: RequestOptions = try RequestOptions.noneIfNull(options: options)
        return try CastRequired<OrderDetailsExtended>.from(self.executeQuery(query.fromDefault(NorthwindEntitiesMetadata.EntitySets.orderDetailsExtendeds), headers: var_headers, options: var_options).requiredEntity())
    }

    open func fetchOrderDetailsExtended(matching query: DataQuery, headers: HTTPHeaders? = nil, options: RequestOptions? = nil, completionHandler: @escaping (OrderDetailsExtended?, Error?) -> Void) {
        self.addBackgroundOperationForFunction {
            do {
                let result: OrderDetailsExtended = try self.fetchOrderDetailsExtended(matching: query, headers: headers, options: options)
                self.completionQueue.addOperation {
                    completionHandler(result, nil)
                }
            } catch let error {
                self.completionQueue.addOperation {
                    completionHandler(nil, error)
                }
            }
        }
    }

    open func fetchOrderDetailsExtendeds(matching query: DataQuery? = nil, headers: HTTPHeaders? = nil, options: RequestOptions? = nil) throws -> Array<OrderDetailsExtended> {
        let var_query: DataQuery = DataQuery.newIfNull(query: query)
        let var_headers: HTTPHeaders = HTTPHeaders.emptyIfNull(headers: headers)
        let var_options: RequestOptions = try RequestOptions.noneIfNull(options: options)
        return try OrderDetailsExtended.array(from: self.executeQuery(var_query.fromDefault(NorthwindEntitiesMetadata.EntitySets.orderDetailsExtendeds), headers: var_headers, options: var_options).entityList())
    }

    open func fetchOrderDetailsExtendeds(matching query: DataQuery = DataQuery(), headers: HTTPHeaders? = nil, options: RequestOptions? = nil, completionHandler: @escaping (Array<OrderDetailsExtended>?, Error?) -> Void) {
        self.addBackgroundOperationForFunction {
            do {
                let result: Array<OrderDetailsExtended> = try self.fetchOrderDetailsExtendeds(matching: query, headers: headers, options: options)
                self.completionQueue.addOperation {
                    completionHandler(result, nil)
                }
            } catch let error {
                self.completionQueue.addOperation {
                    completionHandler(nil, error)
                }
            }
        }
    }

    open func fetchOrderSubtotal(matching query: DataQuery, headers: HTTPHeaders? = nil, options: RequestOptions? = nil) throws -> OrderSubtotal {
        let var_headers: HTTPHeaders = HTTPHeaders.emptyIfNull(headers: headers)
        let var_options: RequestOptions = try RequestOptions.noneIfNull(options: options)
        return try CastRequired<OrderSubtotal>.from(self.executeQuery(query.fromDefault(NorthwindEntitiesMetadata.EntitySets.orderSubtotals), headers: var_headers, options: var_options).requiredEntity())
    }

    open func fetchOrderSubtotal(matching query: DataQuery, headers: HTTPHeaders? = nil, options: RequestOptions? = nil, completionHandler: @escaping (OrderSubtotal?, Error?) -> Void) {
        self.addBackgroundOperationForFunction {
            do {
                let result: OrderSubtotal = try self.fetchOrderSubtotal(matching: query, headers: headers, options: options)
                self.completionQueue.addOperation {
                    completionHandler(result, nil)
                }
            } catch let error {
                self.completionQueue.addOperation {
                    completionHandler(nil, error)
                }
            }
        }
    }

    open func fetchOrderSubtotals(matching query: DataQuery? = nil, headers: HTTPHeaders? = nil, options: RequestOptions? = nil) throws -> Array<OrderSubtotal> {
        let var_query: DataQuery = DataQuery.newIfNull(query: query)
        let var_headers: HTTPHeaders = HTTPHeaders.emptyIfNull(headers: headers)
        let var_options: RequestOptions = try RequestOptions.noneIfNull(options: options)
        return try OrderSubtotal.array(from: self.executeQuery(var_query.fromDefault(NorthwindEntitiesMetadata.EntitySets.orderSubtotals), headers: var_headers, options: var_options).entityList())
    }

    open func fetchOrderSubtotals(matching query: DataQuery = DataQuery(), headers: HTTPHeaders? = nil, options: RequestOptions? = nil, completionHandler: @escaping (Array<OrderSubtotal>?, Error?) -> Void) {
        self.addBackgroundOperationForFunction {
            do {
                let result: Array<OrderSubtotal> = try self.fetchOrderSubtotals(matching: query, headers: headers, options: options)
                self.completionQueue.addOperation {
                    completionHandler(result, nil)
                }
            } catch let error {
                self.completionQueue.addOperation {
                    completionHandler(nil, error)
                }
            }
        }
    }

    open func fetchOrders(matching query: DataQuery? = nil, headers: HTTPHeaders? = nil, options: RequestOptions? = nil) throws -> Array<Order> {
        let var_query: DataQuery = DataQuery.newIfNull(query: query)
        let var_headers: HTTPHeaders = HTTPHeaders.emptyIfNull(headers: headers)
        let var_options: RequestOptions = try RequestOptions.noneIfNull(options: options)
        return try Order.array(from: self.executeQuery(var_query.fromDefault(NorthwindEntitiesMetadata.EntitySets.orders), headers: var_headers, options: var_options).entityList())
    }

    open func fetchOrders(matching query: DataQuery = DataQuery(), headers: HTTPHeaders? = nil, options: RequestOptions? = nil, completionHandler: @escaping (Array<Order>?, Error?) -> Void) {
        self.addBackgroundOperationForFunction {
            do {
                let result: Array<Order> = try self.fetchOrders(matching: query, headers: headers, options: options)
                self.completionQueue.addOperation {
                    completionHandler(result, nil)
                }
            } catch let error {
                self.completionQueue.addOperation {
                    completionHandler(nil, error)
                }
            }
        }
    }

    open func fetchOrdersQries(matching query: DataQuery? = nil, headers: HTTPHeaders? = nil, options: RequestOptions? = nil) throws -> Array<OrdersQry> {
        let var_query: DataQuery = DataQuery.newIfNull(query: query)
        let var_headers: HTTPHeaders = HTTPHeaders.emptyIfNull(headers: headers)
        let var_options: RequestOptions = try RequestOptions.noneIfNull(options: options)
        return try OrdersQry.array(from: self.executeQuery(var_query.fromDefault(NorthwindEntitiesMetadata.EntitySets.ordersQries), headers: var_headers, options: var_options).entityList())
    }

    open func fetchOrdersQries(matching query: DataQuery = DataQuery(), headers: HTTPHeaders? = nil, options: RequestOptions? = nil, completionHandler: @escaping (Array<OrdersQry>?, Error?) -> Void) {
        self.addBackgroundOperationForFunction {
            do {
                let result: Array<OrdersQry> = try self.fetchOrdersQries(matching: query, headers: headers, options: options)
                self.completionQueue.addOperation {
                    completionHandler(result, nil)
                }
            } catch let error {
                self.completionQueue.addOperation {
                    completionHandler(nil, error)
                }
            }
        }
    }

    open func fetchOrdersQry(matching query: DataQuery, headers: HTTPHeaders? = nil, options: RequestOptions? = nil) throws -> OrdersQry {
        let var_headers: HTTPHeaders = HTTPHeaders.emptyIfNull(headers: headers)
        let var_options: RequestOptions = try RequestOptions.noneIfNull(options: options)
        return try CastRequired<OrdersQry>.from(self.executeQuery(query.fromDefault(NorthwindEntitiesMetadata.EntitySets.ordersQries), headers: var_headers, options: var_options).requiredEntity())
    }

    open func fetchOrdersQry(matching query: DataQuery, headers: HTTPHeaders? = nil, options: RequestOptions? = nil, completionHandler: @escaping (OrdersQry?, Error?) -> Void) {
        self.addBackgroundOperationForFunction {
            do {
                let result: OrdersQry = try self.fetchOrdersQry(matching: query, headers: headers, options: options)
                self.completionQueue.addOperation {
                    completionHandler(result, nil)
                }
            } catch let error {
                self.completionQueue.addOperation {
                    completionHandler(nil, error)
                }
            }
        }
    }

    open func fetchProduct(matching query: DataQuery, headers: HTTPHeaders? = nil, options: RequestOptions? = nil) throws -> Product {
        let var_headers: HTTPHeaders = HTTPHeaders.emptyIfNull(headers: headers)
        let var_options: RequestOptions = try RequestOptions.noneIfNull(options: options)
        return try CastRequired<Product>.from(self.executeQuery(query.fromDefault(NorthwindEntitiesMetadata.EntitySets.products), headers: var_headers, options: var_options).requiredEntity())
    }

    open func fetchProduct(matching query: DataQuery, headers: HTTPHeaders? = nil, options: RequestOptions? = nil, completionHandler: @escaping (Product?, Error?) -> Void) {
        self.addBackgroundOperationForFunction {
            do {
                let result: Product = try self.fetchProduct(matching: query, headers: headers, options: options)
                self.completionQueue.addOperation {
                    completionHandler(result, nil)
                }
            } catch let error {
                self.completionQueue.addOperation {
                    completionHandler(nil, error)
                }
            }
        }
    }

    open func fetchProductSalesFor1997(matching query: DataQuery? = nil, headers: HTTPHeaders? = nil, options: RequestOptions? = nil) throws -> Array<ProductSalesFor1997> {
        let var_query: DataQuery = DataQuery.newIfNull(query: query)
        let var_headers: HTTPHeaders = HTTPHeaders.emptyIfNull(headers: headers)
        let var_options: RequestOptions = try RequestOptions.noneIfNull(options: options)
        return try ProductSalesFor1997.array(from: self.executeQuery(var_query.fromDefault(NorthwindEntitiesMetadata.EntitySets.productSalesFor1997), headers: var_headers, options: var_options).entityList())
    }

    open func fetchProductSalesFor1997(matching query: DataQuery = DataQuery(), headers: HTTPHeaders? = nil, options: RequestOptions? = nil, completionHandler: @escaping (Array<ProductSalesFor1997>?, Error?) -> Void) {
        self.addBackgroundOperationForFunction {
            do {
                let result: Array<ProductSalesFor1997> = try self.fetchProductSalesFor1997(matching: query, headers: headers, options: options)
                self.completionQueue.addOperation {
                    completionHandler(result, nil)
                }
            } catch let error {
                self.completionQueue.addOperation {
                    completionHandler(nil, error)
                }
            }
        }
    }

    open func fetchProductSalesFor1997_1(matching query: DataQuery, headers: HTTPHeaders? = nil, options: RequestOptions? = nil) throws -> ProductSalesFor1997 {
        let var_headers: HTTPHeaders = HTTPHeaders.emptyIfNull(headers: headers)
        let var_options: RequestOptions = try RequestOptions.noneIfNull(options: options)
        return try CastRequired<ProductSalesFor1997>.from(self.executeQuery(query.fromDefault(NorthwindEntitiesMetadata.EntitySets.productSalesFor1997), headers: var_headers, options: var_options).requiredEntity())
    }

    open func fetchProductSalesFor1997_1(matching query: DataQuery, headers: HTTPHeaders? = nil, options: RequestOptions? = nil, completionHandler: @escaping (ProductSalesFor1997?, Error?) -> Void) {
        self.addBackgroundOperationForFunction {
            do {
                let result: ProductSalesFor1997 = try self.fetchProductSalesFor1997_1(matching: query, headers: headers, options: options)
                self.completionQueue.addOperation {
                    completionHandler(result, nil)
                }
            } catch let error {
                self.completionQueue.addOperation {
                    completionHandler(nil, error)
                }
            }
        }
    }

    open func fetchProducts(matching query: DataQuery? = nil, headers: HTTPHeaders? = nil, options: RequestOptions? = nil) throws -> Array<Product> {
        let var_query: DataQuery = DataQuery.newIfNull(query: query)
        let var_headers: HTTPHeaders = HTTPHeaders.emptyIfNull(headers: headers)
        let var_options: RequestOptions = try RequestOptions.noneIfNull(options: options)
        return try Product.array(from: self.executeQuery(var_query.fromDefault(NorthwindEntitiesMetadata.EntitySets.products), headers: var_headers, options: var_options).entityList())
    }

    open func fetchProducts(matching query: DataQuery = DataQuery(), headers: HTTPHeaders? = nil, options: RequestOptions? = nil, completionHandler: @escaping (Array<Product>?, Error?) -> Void) {
        self.addBackgroundOperationForFunction {
            do {
                let result: Array<Product> = try self.fetchProducts(matching: query, headers: headers, options: options)
                self.completionQueue.addOperation {
                    completionHandler(result, nil)
                }
            } catch let error {
                self.completionQueue.addOperation {
                    completionHandler(nil, error)
                }
            }
        }
    }

    open func fetchProductsAboveAveragePrice(matching query: DataQuery, headers: HTTPHeaders? = nil, options: RequestOptions? = nil) throws -> ProductsAboveAveragePrice {
        let var_headers: HTTPHeaders = HTTPHeaders.emptyIfNull(headers: headers)
        let var_options: RequestOptions = try RequestOptions.noneIfNull(options: options)
        return try CastRequired<ProductsAboveAveragePrice>.from(self.executeQuery(query.fromDefault(NorthwindEntitiesMetadata.EntitySets.productsAboveAveragePrices), headers: var_headers, options: var_options).requiredEntity())
    }

    open func fetchProductsAboveAveragePrice(matching query: DataQuery, headers: HTTPHeaders? = nil, options: RequestOptions? = nil, completionHandler: @escaping (ProductsAboveAveragePrice?, Error?) -> Void) {
        self.addBackgroundOperationForFunction {
            do {
                let result: ProductsAboveAveragePrice = try self.fetchProductsAboveAveragePrice(matching: query, headers: headers, options: options)
                self.completionQueue.addOperation {
                    completionHandler(result, nil)
                }
            } catch let error {
                self.completionQueue.addOperation {
                    completionHandler(nil, error)
                }
            }
        }
    }

    open func fetchProductsAboveAveragePrices(matching query: DataQuery? = nil, headers: HTTPHeaders? = nil, options: RequestOptions? = nil) throws -> Array<ProductsAboveAveragePrice> {
        let var_query: DataQuery = DataQuery.newIfNull(query: query)
        let var_headers: HTTPHeaders = HTTPHeaders.emptyIfNull(headers: headers)
        let var_options: RequestOptions = try RequestOptions.noneIfNull(options: options)
        return try ProductsAboveAveragePrice.array(from: self.executeQuery(var_query.fromDefault(NorthwindEntitiesMetadata.EntitySets.productsAboveAveragePrices), headers: var_headers, options: var_options).entityList())
    }

    open func fetchProductsAboveAveragePrices(matching query: DataQuery = DataQuery(), headers: HTTPHeaders? = nil, options: RequestOptions? = nil, completionHandler: @escaping (Array<ProductsAboveAveragePrice>?, Error?) -> Void) {
        self.addBackgroundOperationForFunction {
            do {
                let result: Array<ProductsAboveAveragePrice> = try self.fetchProductsAboveAveragePrices(matching: query, headers: headers, options: options)
                self.completionQueue.addOperation {
                    completionHandler(result, nil)
                }
            } catch let error {
                self.completionQueue.addOperation {
                    completionHandler(nil, error)
                }
            }
        }
    }

    open func fetchProductsByCategories(matching query: DataQuery? = nil, headers: HTTPHeaders? = nil, options: RequestOptions? = nil) throws -> Array<ProductsByCategory> {
        let var_query: DataQuery = DataQuery.newIfNull(query: query)
        let var_headers: HTTPHeaders = HTTPHeaders.emptyIfNull(headers: headers)
        let var_options: RequestOptions = try RequestOptions.noneIfNull(options: options)
        return try ProductsByCategory.array(from: self.executeQuery(var_query.fromDefault(NorthwindEntitiesMetadata.EntitySets.productsByCategories), headers: var_headers, options: var_options).entityList())
    }

    open func fetchProductsByCategories(matching query: DataQuery = DataQuery(), headers: HTTPHeaders? = nil, options: RequestOptions? = nil, completionHandler: @escaping (Array<ProductsByCategory>?, Error?) -> Void) {
        self.addBackgroundOperationForFunction {
            do {
                let result: Array<ProductsByCategory> = try self.fetchProductsByCategories(matching: query, headers: headers, options: options)
                self.completionQueue.addOperation {
                    completionHandler(result, nil)
                }
            } catch let error {
                self.completionQueue.addOperation {
                    completionHandler(nil, error)
                }
            }
        }
    }

    open func fetchProductsByCategory(matching query: DataQuery, headers: HTTPHeaders? = nil, options: RequestOptions? = nil) throws -> ProductsByCategory {
        let var_headers: HTTPHeaders = HTTPHeaders.emptyIfNull(headers: headers)
        let var_options: RequestOptions = try RequestOptions.noneIfNull(options: options)
        return try CastRequired<ProductsByCategory>.from(self.executeQuery(query.fromDefault(NorthwindEntitiesMetadata.EntitySets.productsByCategories), headers: var_headers, options: var_options).requiredEntity())
    }

    open func fetchProductsByCategory(matching query: DataQuery, headers: HTTPHeaders? = nil, options: RequestOptions? = nil, completionHandler: @escaping (ProductsByCategory?, Error?) -> Void) {
        self.addBackgroundOperationForFunction {
            do {
                let result: ProductsByCategory = try self.fetchProductsByCategory(matching: query, headers: headers, options: options)
                self.completionQueue.addOperation {
                    completionHandler(result, nil)
                }
            } catch let error {
                self.completionQueue.addOperation {
                    completionHandler(nil, error)
                }
            }
        }
    }

    open func fetchRegion(matching query: DataQuery, headers: HTTPHeaders? = nil, options: RequestOptions? = nil) throws -> Region {
        let var_headers: HTTPHeaders = HTTPHeaders.emptyIfNull(headers: headers)
        let var_options: RequestOptions = try RequestOptions.noneIfNull(options: options)
        return try CastRequired<Region>.from(self.executeQuery(query.fromDefault(NorthwindEntitiesMetadata.EntitySets.regions), headers: var_headers, options: var_options).requiredEntity())
    }

    open func fetchRegion(matching query: DataQuery, headers: HTTPHeaders? = nil, options: RequestOptions? = nil, completionHandler: @escaping (Region?, Error?) -> Void) {
        self.addBackgroundOperationForFunction {
            do {
                let result: Region = try self.fetchRegion(matching: query, headers: headers, options: options)
                self.completionQueue.addOperation {
                    completionHandler(result, nil)
                }
            } catch let error {
                self.completionQueue.addOperation {
                    completionHandler(nil, error)
                }
            }
        }
    }

    open func fetchRegions(matching query: DataQuery? = nil, headers: HTTPHeaders? = nil, options: RequestOptions? = nil) throws -> Array<Region> {
        let var_query: DataQuery = DataQuery.newIfNull(query: query)
        let var_headers: HTTPHeaders = HTTPHeaders.emptyIfNull(headers: headers)
        let var_options: RequestOptions = try RequestOptions.noneIfNull(options: options)
        return try Region.array(from: self.executeQuery(var_query.fromDefault(NorthwindEntitiesMetadata.EntitySets.regions), headers: var_headers, options: var_options).entityList())
    }

    open func fetchRegions(matching query: DataQuery = DataQuery(), headers: HTTPHeaders? = nil, options: RequestOptions? = nil, completionHandler: @escaping (Array<Region>?, Error?) -> Void) {
        self.addBackgroundOperationForFunction {
            do {
                let result: Array<Region> = try self.fetchRegions(matching: query, headers: headers, options: options)
                self.completionQueue.addOperation {
                    completionHandler(result, nil)
                }
            } catch let error {
                self.completionQueue.addOperation {
                    completionHandler(nil, error)
                }
            }
        }
    }

    open func fetchSalesByCategories(matching query: DataQuery? = nil, headers: HTTPHeaders? = nil, options: RequestOptions? = nil) throws -> Array<SalesByCategory> {
        let var_query: DataQuery = DataQuery.newIfNull(query: query)
        let var_headers: HTTPHeaders = HTTPHeaders.emptyIfNull(headers: headers)
        let var_options: RequestOptions = try RequestOptions.noneIfNull(options: options)
        return try SalesByCategory.array(from: self.executeQuery(var_query.fromDefault(NorthwindEntitiesMetadata.EntitySets.salesByCategories), headers: var_headers, options: var_options).entityList())
    }

    open func fetchSalesByCategories(matching query: DataQuery = DataQuery(), headers: HTTPHeaders? = nil, options: RequestOptions? = nil, completionHandler: @escaping (Array<SalesByCategory>?, Error?) -> Void) {
        self.addBackgroundOperationForFunction {
            do {
                let result: Array<SalesByCategory> = try self.fetchSalesByCategories(matching: query, headers: headers, options: options)
                self.completionQueue.addOperation {
                    completionHandler(result, nil)
                }
            } catch let error {
                self.completionQueue.addOperation {
                    completionHandler(nil, error)
                }
            }
        }
    }

    open func fetchSalesByCategory(matching query: DataQuery, headers: HTTPHeaders? = nil, options: RequestOptions? = nil) throws -> SalesByCategory {
        let var_headers: HTTPHeaders = HTTPHeaders.emptyIfNull(headers: headers)
        let var_options: RequestOptions = try RequestOptions.noneIfNull(options: options)
        return try CastRequired<SalesByCategory>.from(self.executeQuery(query.fromDefault(NorthwindEntitiesMetadata.EntitySets.salesByCategories), headers: var_headers, options: var_options).requiredEntity())
    }

    open func fetchSalesByCategory(matching query: DataQuery, headers: HTTPHeaders? = nil, options: RequestOptions? = nil, completionHandler: @escaping (SalesByCategory?, Error?) -> Void) {
        self.addBackgroundOperationForFunction {
            do {
                let result: SalesByCategory = try self.fetchSalesByCategory(matching: query, headers: headers, options: options)
                self.completionQueue.addOperation {
                    completionHandler(result, nil)
                }
            } catch let error {
                self.completionQueue.addOperation {
                    completionHandler(nil, error)
                }
            }
        }
    }

    open func fetchSalesTotalsByAmount(matching query: DataQuery, headers: HTTPHeaders? = nil, options: RequestOptions? = nil) throws -> SalesTotalsByAmount {
        let var_headers: HTTPHeaders = HTTPHeaders.emptyIfNull(headers: headers)
        let var_options: RequestOptions = try RequestOptions.noneIfNull(options: options)
        return try CastRequired<SalesTotalsByAmount>.from(self.executeQuery(query.fromDefault(NorthwindEntitiesMetadata.EntitySets.salesTotalsByAmounts), headers: var_headers, options: var_options).requiredEntity())
    }

    open func fetchSalesTotalsByAmount(matching query: DataQuery, headers: HTTPHeaders? = nil, options: RequestOptions? = nil, completionHandler: @escaping (SalesTotalsByAmount?, Error?) -> Void) {
        self.addBackgroundOperationForFunction {
            do {
                let result: SalesTotalsByAmount = try self.fetchSalesTotalsByAmount(matching: query, headers: headers, options: options)
                self.completionQueue.addOperation {
                    completionHandler(result, nil)
                }
            } catch let error {
                self.completionQueue.addOperation {
                    completionHandler(nil, error)
                }
            }
        }
    }

    open func fetchSalesTotalsByAmounts(matching query: DataQuery? = nil, headers: HTTPHeaders? = nil, options: RequestOptions? = nil) throws -> Array<SalesTotalsByAmount> {
        let var_query: DataQuery = DataQuery.newIfNull(query: query)
        let var_headers: HTTPHeaders = HTTPHeaders.emptyIfNull(headers: headers)
        let var_options: RequestOptions = try RequestOptions.noneIfNull(options: options)
        return try SalesTotalsByAmount.array(from: self.executeQuery(var_query.fromDefault(NorthwindEntitiesMetadata.EntitySets.salesTotalsByAmounts), headers: var_headers, options: var_options).entityList())
    }

    open func fetchSalesTotalsByAmounts(matching query: DataQuery = DataQuery(), headers: HTTPHeaders? = nil, options: RequestOptions? = nil, completionHandler: @escaping (Array<SalesTotalsByAmount>?, Error?) -> Void) {
        self.addBackgroundOperationForFunction {
            do {
                let result: Array<SalesTotalsByAmount> = try self.fetchSalesTotalsByAmounts(matching: query, headers: headers, options: options)
                self.completionQueue.addOperation {
                    completionHandler(result, nil)
                }
            } catch let error {
                self.completionQueue.addOperation {
                    completionHandler(nil, error)
                }
            }
        }
    }

    open func fetchShipper(matching query: DataQuery, headers: HTTPHeaders? = nil, options: RequestOptions? = nil) throws -> Shipper {
        let var_headers: HTTPHeaders = HTTPHeaders.emptyIfNull(headers: headers)
        let var_options: RequestOptions = try RequestOptions.noneIfNull(options: options)
        return try CastRequired<Shipper>.from(self.executeQuery(query.fromDefault(NorthwindEntitiesMetadata.EntitySets.shippers), headers: var_headers, options: var_options).requiredEntity())
    }

    open func fetchShipper(matching query: DataQuery, headers: HTTPHeaders? = nil, options: RequestOptions? = nil, completionHandler: @escaping (Shipper?, Error?) -> Void) {
        self.addBackgroundOperationForFunction {
            do {
                let result: Shipper = try self.fetchShipper(matching: query, headers: headers, options: options)
                self.completionQueue.addOperation {
                    completionHandler(result, nil)
                }
            } catch let error {
                self.completionQueue.addOperation {
                    completionHandler(nil, error)
                }
            }
        }
    }

    open func fetchShippers(matching query: DataQuery? = nil, headers: HTTPHeaders? = nil, options: RequestOptions? = nil) throws -> Array<Shipper> {
        let var_query: DataQuery = DataQuery.newIfNull(query: query)
        let var_headers: HTTPHeaders = HTTPHeaders.emptyIfNull(headers: headers)
        let var_options: RequestOptions = try RequestOptions.noneIfNull(options: options)
        return try Shipper.array(from: self.executeQuery(var_query.fromDefault(NorthwindEntitiesMetadata.EntitySets.shippers), headers: var_headers, options: var_options).entityList())
    }

    open func fetchShippers(matching query: DataQuery = DataQuery(), headers: HTTPHeaders? = nil, options: RequestOptions? = nil, completionHandler: @escaping (Array<Shipper>?, Error?) -> Void) {
        self.addBackgroundOperationForFunction {
            do {
                let result: Array<Shipper> = try self.fetchShippers(matching: query, headers: headers, options: options)
                self.completionQueue.addOperation {
                    completionHandler(result, nil)
                }
            } catch let error {
                self.completionQueue.addOperation {
                    completionHandler(nil, error)
                }
            }
        }
    }

    open func fetchSummaryOfSalesByQuarter(matching query: DataQuery, headers: HTTPHeaders? = nil, options: RequestOptions? = nil) throws -> SummaryOfSalesByQuarter {
        let var_headers: HTTPHeaders = HTTPHeaders.emptyIfNull(headers: headers)
        let var_options: RequestOptions = try RequestOptions.noneIfNull(options: options)
        return try CastRequired<SummaryOfSalesByQuarter>.from(self.executeQuery(query.fromDefault(NorthwindEntitiesMetadata.EntitySets.summaryOfSalesByQuarters), headers: var_headers, options: var_options).requiredEntity())
    }

    open func fetchSummaryOfSalesByQuarter(matching query: DataQuery, headers: HTTPHeaders? = nil, options: RequestOptions? = nil, completionHandler: @escaping (SummaryOfSalesByQuarter?, Error?) -> Void) {
        self.addBackgroundOperationForFunction {
            do {
                let result: SummaryOfSalesByQuarter = try self.fetchSummaryOfSalesByQuarter(matching: query, headers: headers, options: options)
                self.completionQueue.addOperation {
                    completionHandler(result, nil)
                }
            } catch let error {
                self.completionQueue.addOperation {
                    completionHandler(nil, error)
                }
            }
        }
    }

    open func fetchSummaryOfSalesByQuarters(matching query: DataQuery? = nil, headers: HTTPHeaders? = nil, options: RequestOptions? = nil) throws -> Array<SummaryOfSalesByQuarter> {
        let var_query: DataQuery = DataQuery.newIfNull(query: query)
        let var_headers: HTTPHeaders = HTTPHeaders.emptyIfNull(headers: headers)
        let var_options: RequestOptions = try RequestOptions.noneIfNull(options: options)
        return try SummaryOfSalesByQuarter.array(from: self.executeQuery(var_query.fromDefault(NorthwindEntitiesMetadata.EntitySets.summaryOfSalesByQuarters), headers: var_headers, options: var_options).entityList())
    }

    open func fetchSummaryOfSalesByQuarters(matching query: DataQuery = DataQuery(), headers: HTTPHeaders? = nil, options: RequestOptions? = nil, completionHandler: @escaping (Array<SummaryOfSalesByQuarter>?, Error?) -> Void) {
        self.addBackgroundOperationForFunction {
            do {
                let result: Array<SummaryOfSalesByQuarter> = try self.fetchSummaryOfSalesByQuarters(matching: query, headers: headers, options: options)
                self.completionQueue.addOperation {
                    completionHandler(result, nil)
                }
            } catch let error {
                self.completionQueue.addOperation {
                    completionHandler(nil, error)
                }
            }
        }
    }

    open func fetchSummaryOfSalesByYear(matching query: DataQuery, headers: HTTPHeaders? = nil, options: RequestOptions? = nil) throws -> SummaryOfSalesByYear {
        let var_headers: HTTPHeaders = HTTPHeaders.emptyIfNull(headers: headers)
        let var_options: RequestOptions = try RequestOptions.noneIfNull(options: options)
        return try CastRequired<SummaryOfSalesByYear>.from(self.executeQuery(query.fromDefault(NorthwindEntitiesMetadata.EntitySets.summaryOfSalesByYears), headers: var_headers, options: var_options).requiredEntity())
    }

    open func fetchSummaryOfSalesByYear(matching query: DataQuery, headers: HTTPHeaders? = nil, options: RequestOptions? = nil, completionHandler: @escaping (SummaryOfSalesByYear?, Error?) -> Void) {
        self.addBackgroundOperationForFunction {
            do {
                let result: SummaryOfSalesByYear = try self.fetchSummaryOfSalesByYear(matching: query, headers: headers, options: options)
                self.completionQueue.addOperation {
                    completionHandler(result, nil)
                }
            } catch let error {
                self.completionQueue.addOperation {
                    completionHandler(nil, error)
                }
            }
        }
    }

    open func fetchSummaryOfSalesByYears(matching query: DataQuery? = nil, headers: HTTPHeaders? = nil, options: RequestOptions? = nil) throws -> Array<SummaryOfSalesByYear> {
        let var_query: DataQuery = DataQuery.newIfNull(query: query)
        let var_headers: HTTPHeaders = HTTPHeaders.emptyIfNull(headers: headers)
        let var_options: RequestOptions = try RequestOptions.noneIfNull(options: options)
        return try SummaryOfSalesByYear.array(from: self.executeQuery(var_query.fromDefault(NorthwindEntitiesMetadata.EntitySets.summaryOfSalesByYears), headers: var_headers, options: var_options).entityList())
    }

    open func fetchSummaryOfSalesByYears(matching query: DataQuery = DataQuery(), headers: HTTPHeaders? = nil, options: RequestOptions? = nil, completionHandler: @escaping (Array<SummaryOfSalesByYear>?, Error?) -> Void) {
        self.addBackgroundOperationForFunction {
            do {
                let result: Array<SummaryOfSalesByYear> = try self.fetchSummaryOfSalesByYears(matching: query, headers: headers, options: options)
                self.completionQueue.addOperation {
                    completionHandler(result, nil)
                }
            } catch let error {
                self.completionQueue.addOperation {
                    completionHandler(nil, error)
                }
            }
        }
    }

    open func fetchSupplier(matching query: DataQuery, headers: HTTPHeaders? = nil, options: RequestOptions? = nil) throws -> Supplier {
        let var_headers: HTTPHeaders = HTTPHeaders.emptyIfNull(headers: headers)
        let var_options: RequestOptions = try RequestOptions.noneIfNull(options: options)
        return try CastRequired<Supplier>.from(self.executeQuery(query.fromDefault(NorthwindEntitiesMetadata.EntitySets.suppliers), headers: var_headers, options: var_options).requiredEntity())
    }

    open func fetchSupplier(matching query: DataQuery, headers: HTTPHeaders? = nil, options: RequestOptions? = nil, completionHandler: @escaping (Supplier?, Error?) -> Void) {
        self.addBackgroundOperationForFunction {
            do {
                let result: Supplier = try self.fetchSupplier(matching: query, headers: headers, options: options)
                self.completionQueue.addOperation {
                    completionHandler(result, nil)
                }
            } catch let error {
                self.completionQueue.addOperation {
                    completionHandler(nil, error)
                }
            }
        }
    }

    open func fetchSuppliers(matching query: DataQuery? = nil, headers: HTTPHeaders? = nil, options: RequestOptions? = nil) throws -> Array<Supplier> {
        let var_query: DataQuery = DataQuery.newIfNull(query: query)
        let var_headers: HTTPHeaders = HTTPHeaders.emptyIfNull(headers: headers)
        let var_options: RequestOptions = try RequestOptions.noneIfNull(options: options)
        return try Supplier.array(from: self.executeQuery(var_query.fromDefault(NorthwindEntitiesMetadata.EntitySets.suppliers), headers: var_headers, options: var_options).entityList())
    }

    open func fetchSuppliers(matching query: DataQuery = DataQuery(), headers: HTTPHeaders? = nil, options: RequestOptions? = nil, completionHandler: @escaping (Array<Supplier>?, Error?) -> Void) {
        self.addBackgroundOperationForFunction {
            do {
                let result: Array<Supplier> = try self.fetchSuppliers(matching: query, headers: headers, options: options)
                self.completionQueue.addOperation {
                    completionHandler(result, nil)
                }
            } catch let error {
                self.completionQueue.addOperation {
                    completionHandler(nil, error)
                }
            }
        }
    }

    open func fetchTerritories(matching query: DataQuery? = nil, headers: HTTPHeaders? = nil, options: RequestOptions? = nil) throws -> Array<Territory> {
        let var_query: DataQuery = DataQuery.newIfNull(query: query)
        let var_headers: HTTPHeaders = HTTPHeaders.emptyIfNull(headers: headers)
        let var_options: RequestOptions = try RequestOptions.noneIfNull(options: options)
        return try Territory.array(from: self.executeQuery(var_query.fromDefault(NorthwindEntitiesMetadata.EntitySets.territories), headers: var_headers, options: var_options).entityList())
    }

    open func fetchTerritories(matching query: DataQuery = DataQuery(), headers: HTTPHeaders? = nil, options: RequestOptions? = nil, completionHandler: @escaping (Array<Territory>?, Error?) -> Void) {
        self.addBackgroundOperationForFunction {
            do {
                let result: Array<Territory> = try self.fetchTerritories(matching: query, headers: headers, options: options)
                self.completionQueue.addOperation {
                    completionHandler(result, nil)
                }
            } catch let error {
                self.completionQueue.addOperation {
                    completionHandler(nil, error)
                }
            }
        }
    }

    open func fetchTerritory(matching query: DataQuery, headers: HTTPHeaders? = nil, options: RequestOptions? = nil) throws -> Territory {
        let var_headers: HTTPHeaders = HTTPHeaders.emptyIfNull(headers: headers)
        let var_options: RequestOptions = try RequestOptions.noneIfNull(options: options)
        return try CastRequired<Territory>.from(self.executeQuery(query.fromDefault(NorthwindEntitiesMetadata.EntitySets.territories), headers: var_headers, options: var_options).requiredEntity())
    }

    open func fetchTerritory(matching query: DataQuery, headers: HTTPHeaders? = nil, options: RequestOptions? = nil, completionHandler: @escaping (Territory?, Error?) -> Void) {
        self.addBackgroundOperationForFunction {
            do {
                let result: Territory = try self.fetchTerritory(matching: query, headers: headers, options: options)
                self.completionQueue.addOperation {
                    completionHandler(result, nil)
                }
            } catch let error {
                self.completionQueue.addOperation {
                    completionHandler(nil, error)
                }
            }
        }
    }

    @available(swift, deprecated: 4.0, renamed: "fetchInvoices")
    open func invoices(query: DataQuery = DataQuery()) throws -> Array<Invoice> {
        return try self.fetchInvoices(matching: query)
    }

    @available(swift, deprecated: 4.0, renamed: "fetchInvoices")
    open func invoices(query: DataQuery = DataQuery(), completionHandler: @escaping (Array<Invoice>?, Error?) -> Void) {
        self.fetchInvoices(matching: query, headers: nil, options: nil, completionHandler: completionHandler)
    }

    @available(swift, deprecated: 4.0, renamed: "fetchOrderDetails")
    open func orderDetails(query: DataQuery = DataQuery()) throws -> Array<OrderDetail> {
        return try self.fetchOrderDetails(matching: query)
    }

    @available(swift, deprecated: 4.0, renamed: "fetchOrderDetails")
    open func orderDetails(query: DataQuery = DataQuery(), completionHandler: @escaping (Array<OrderDetail>?, Error?) -> Void) {
        self.fetchOrderDetails(matching: query, headers: nil, options: nil, completionHandler: completionHandler)
    }

    @available(swift, deprecated: 4.0, renamed: "fetchOrderDetailsExtendeds")
    open func orderDetailsExtendeds(query: DataQuery = DataQuery()) throws -> Array<OrderDetailsExtended> {
        return try self.fetchOrderDetailsExtendeds(matching: query)
    }

    @available(swift, deprecated: 4.0, renamed: "fetchOrderDetailsExtendeds")
    open func orderDetailsExtendeds(query: DataQuery = DataQuery(), completionHandler: @escaping (Array<OrderDetailsExtended>?, Error?) -> Void) {
        self.fetchOrderDetailsExtendeds(matching: query, headers: nil, options: nil, completionHandler: completionHandler)
    }

    @available(swift, deprecated: 4.0, renamed: "fetchOrderSubtotals")
    open func orderSubtotals(query: DataQuery = DataQuery()) throws -> Array<OrderSubtotal> {
        return try self.fetchOrderSubtotals(matching: query)
    }

    @available(swift, deprecated: 4.0, renamed: "fetchOrderSubtotals")
    open func orderSubtotals(query: DataQuery = DataQuery(), completionHandler: @escaping (Array<OrderSubtotal>?, Error?) -> Void) {
        self.fetchOrderSubtotals(matching: query, headers: nil, options: nil, completionHandler: completionHandler)
    }

    @available(swift, deprecated: 4.0, renamed: "fetchOrders")
    open func orders(query: DataQuery = DataQuery()) throws -> Array<Order> {
        return try self.fetchOrders(matching: query)
    }

    @available(swift, deprecated: 4.0, renamed: "fetchOrders")
    open func orders(query: DataQuery = DataQuery(), completionHandler: @escaping (Array<Order>?, Error?) -> Void) {
        self.fetchOrders(matching: query, headers: nil, options: nil, completionHandler: completionHandler)
    }

    @available(swift, deprecated: 4.0, renamed: "fetchOrdersQries")
    open func ordersQries(query: DataQuery = DataQuery()) throws -> Array<OrdersQry> {
        return try self.fetchOrdersQries(matching: query)
    }

    @available(swift, deprecated: 4.0, renamed: "fetchOrdersQries")
    open func ordersQries(query: DataQuery = DataQuery(), completionHandler: @escaping (Array<OrdersQry>?, Error?) -> Void) {
        self.fetchOrdersQries(matching: query, headers: nil, options: nil, completionHandler: completionHandler)
    }

    @available(swift, deprecated: 4.0, renamed: "fetchProductSalesFor1997")
    open func productSalesFor1997(query: DataQuery = DataQuery()) throws -> Array<ProductSalesFor1997> {
        return try self.fetchProductSalesFor1997(matching: query)
    }

    @available(swift, deprecated: 4.0, renamed: "fetchProductSalesFor1997")
    open func productSalesFor1997(query: DataQuery = DataQuery(), completionHandler: @escaping (Array<ProductSalesFor1997>?, Error?) -> Void) {
        self.fetchProductSalesFor1997(matching: query, headers: nil, options: nil, completionHandler: completionHandler)
    }

    @available(swift, deprecated: 4.0, renamed: "fetchProducts")
    open func products(query: DataQuery = DataQuery()) throws -> Array<Product> {
        return try self.fetchProducts(matching: query)
    }

    @available(swift, deprecated: 4.0, renamed: "fetchProducts")
    open func products(query: DataQuery = DataQuery(), completionHandler: @escaping (Array<Product>?, Error?) -> Void) {
        self.fetchProducts(matching: query, headers: nil, options: nil, completionHandler: completionHandler)
    }

    @available(swift, deprecated: 4.0, renamed: "fetchProductsAboveAveragePrices")
    open func productsAboveAveragePrices(query: DataQuery = DataQuery()) throws -> Array<ProductsAboveAveragePrice> {
        return try self.fetchProductsAboveAveragePrices(matching: query)
    }

    @available(swift, deprecated: 4.0, renamed: "fetchProductsAboveAveragePrices")
    open func productsAboveAveragePrices(query: DataQuery = DataQuery(), completionHandler: @escaping (Array<ProductsAboveAveragePrice>?, Error?) -> Void) {
        self.fetchProductsAboveAveragePrices(matching: query, headers: nil, options: nil, completionHandler: completionHandler)
    }

    @available(swift, deprecated: 4.0, renamed: "fetchProductsByCategories")
    open func productsByCategories(query: DataQuery = DataQuery()) throws -> Array<ProductsByCategory> {
        return try self.fetchProductsByCategories(matching: query)
    }

    @available(swift, deprecated: 4.0, renamed: "fetchProductsByCategories")
    open func productsByCategories(query: DataQuery = DataQuery(), completionHandler: @escaping (Array<ProductsByCategory>?, Error?) -> Void) {
        self.fetchProductsByCategories(matching: query, headers: nil, options: nil, completionHandler: completionHandler)
    }

    open override func refreshMetadata() throws {
        objc_sync_enter(self)
        defer { objc_sync_exit(self) }
        do {
            try ProxyInternal.refreshMetadata(service: self, fetcher: nil, options: NorthwindEntitiesMetadataParser.options)
            NorthwindEntitiesMetadataChanges.merge(metadata: self.metadata)
        }
    }

    @available(swift, deprecated: 4.0, renamed: "fetchRegions")
    open func regions(query: DataQuery = DataQuery()) throws -> Array<Region> {
        return try self.fetchRegions(matching: query)
    }

    @available(swift, deprecated: 4.0, renamed: "fetchRegions")
    open func regions(query: DataQuery = DataQuery(), completionHandler: @escaping (Array<Region>?, Error?) -> Void) {
        self.fetchRegions(matching: query, headers: nil, options: nil, completionHandler: completionHandler)
    }

    @available(swift, deprecated: 4.0, renamed: "fetchSalesByCategories")
    open func salesByCategories(query: DataQuery = DataQuery()) throws -> Array<SalesByCategory> {
        return try self.fetchSalesByCategories(matching: query)
    }

    @available(swift, deprecated: 4.0, renamed: "fetchSalesByCategories")
    open func salesByCategories(query: DataQuery = DataQuery(), completionHandler: @escaping (Array<SalesByCategory>?, Error?) -> Void) {
        self.fetchSalesByCategories(matching: query, headers: nil, options: nil, completionHandler: completionHandler)
    }

    @available(swift, deprecated: 4.0, renamed: "fetchSalesTotalsByAmounts")
    open func salesTotalsByAmounts(query: DataQuery = DataQuery()) throws -> Array<SalesTotalsByAmount> {
        return try self.fetchSalesTotalsByAmounts(matching: query)
    }

    @available(swift, deprecated: 4.0, renamed: "fetchSalesTotalsByAmounts")
    open func salesTotalsByAmounts(query: DataQuery = DataQuery(), completionHandler: @escaping (Array<SalesTotalsByAmount>?, Error?) -> Void) {
        self.fetchSalesTotalsByAmounts(matching: query, headers: nil, options: nil, completionHandler: completionHandler)
    }

    @available(swift, deprecated: 4.0, renamed: "fetchShippers")
    open func shippers(query: DataQuery = DataQuery()) throws -> Array<Shipper> {
        return try self.fetchShippers(matching: query)
    }

    @available(swift, deprecated: 4.0, renamed: "fetchShippers")
    open func shippers(query: DataQuery = DataQuery(), completionHandler: @escaping (Array<Shipper>?, Error?) -> Void) {
        self.fetchShippers(matching: query, headers: nil, options: nil, completionHandler: completionHandler)
    }

    @available(swift, deprecated: 4.0, renamed: "fetchSummaryOfSalesByQuarters")
    open func summaryOfSalesByQuarters(query: DataQuery = DataQuery()) throws -> Array<SummaryOfSalesByQuarter> {
        return try self.fetchSummaryOfSalesByQuarters(matching: query)
    }

    @available(swift, deprecated: 4.0, renamed: "fetchSummaryOfSalesByQuarters")
    open func summaryOfSalesByQuarters(query: DataQuery = DataQuery(), completionHandler: @escaping (Array<SummaryOfSalesByQuarter>?, Error?) -> Void) {
        self.fetchSummaryOfSalesByQuarters(matching: query, headers: nil, options: nil, completionHandler: completionHandler)
    }

    @available(swift, deprecated: 4.0, renamed: "fetchSummaryOfSalesByYears")
    open func summaryOfSalesByYears(query: DataQuery = DataQuery()) throws -> Array<SummaryOfSalesByYear> {
        return try self.fetchSummaryOfSalesByYears(matching: query)
    }

    @available(swift, deprecated: 4.0, renamed: "fetchSummaryOfSalesByYears")
    open func summaryOfSalesByYears(query: DataQuery = DataQuery(), completionHandler: @escaping (Array<SummaryOfSalesByYear>?, Error?) -> Void) {
        self.fetchSummaryOfSalesByYears(matching: query, headers: nil, options: nil, completionHandler: completionHandler)
    }

    @available(swift, deprecated: 4.0, renamed: "fetchSuppliers")
    open func suppliers(query: DataQuery = DataQuery()) throws -> Array<Supplier> {
        return try self.fetchSuppliers(matching: query)
    }

    @available(swift, deprecated: 4.0, renamed: "fetchSuppliers")
    open func suppliers(query: DataQuery = DataQuery(), completionHandler: @escaping (Array<Supplier>?, Error?) -> Void) {
        self.fetchSuppliers(matching: query, headers: nil, options: nil, completionHandler: completionHandler)
    }

    @available(swift, deprecated: 4.0, renamed: "fetchTerritories")
    open func territories(query: DataQuery = DataQuery()) throws -> Array<Territory> {
        return try self.fetchTerritories(matching: query)
    }

    @available(swift, deprecated: 4.0, renamed: "fetchTerritories")
    open func territories(query: DataQuery = DataQuery(), completionHandler: @escaping (Array<Territory>?, Error?) -> Void) {
        self.fetchTerritories(matching: query, headers: nil, options: nil, completionHandler: completionHandler)
    }
}
