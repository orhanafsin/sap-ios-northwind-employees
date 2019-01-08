//
// CollectionType.swift
// Employees
//
// Created by SAP Cloud Platform SDK for iOS Assistant application on 08/01/19
//

import Foundation

enum CollectionType: String {
    case regions = "Regions"
    case customers = "Customers"
    case orderDetailsExtendeds = "OrderDetailsExtendeds"
    case productsByCategories = "ProductsByCategories"
    case orders = "Orders"
    case suppliers = "Suppliers"
    case customerAndSuppliersByCities = "CustomerAndSuppliersByCities"
    case summaryOfSalesByQuarters = "SummaryOfSalesByQuarters"
    case products = "Products"
    case summaryOfSalesByYears = "SummaryOfSalesByYears"
    case salesTotalsByAmounts = "SalesTotalsByAmounts"
    case ordersQries = "OrdersQries"
    case categorySalesFor1997 = "CategorySalesFor1997"
    case productSalesFor1997 = "ProductSalesFor1997"
    case orderSubtotals = "OrderSubtotals"
    case invoices = "Invoices"
    case alphabeticalListOfProducts = "AlphabeticalListOfProducts"
    case territories = "Territories"
    case productsAboveAveragePrices = "ProductsAboveAveragePrices"
    case shippers = "Shippers"
    case employees = "Employees"
    case categories = "Categories"
    case customerDemographics = "CustomerDemographics"
    case currentProductLists = "CurrentProductLists"
    case salesByCategories = "SalesByCategories"
    case orderDetails = "OrderDetails"
    case none = ""

    static let all = [
        regions, customers, orderDetailsExtendeds, productsByCategories, orders, suppliers, customerAndSuppliersByCities, summaryOfSalesByQuarters, products, summaryOfSalesByYears, salesTotalsByAmounts, ordersQries, categorySalesFor1997, productSalesFor1997, orderSubtotals, invoices, alphabeticalListOfProducts, territories, productsAboveAveragePrices, shippers, employees, categories, customerDemographics, currentProductLists, salesByCategories, orderDetails,
    ]
}
