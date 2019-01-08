// # Proxy Compiler 18.9.4-973a4d-20181128

import Foundation
import SAPOData

public class NorthwindEntitiesMetadata {
    private static var document_: CSDLDocument = NorthwindEntitiesMetadata.resolve()

    public static var document: CSDLDocument {
        get {
            objc_sync_enter(NorthwindEntitiesMetadata.self)
            defer { objc_sync_exit(NorthwindEntitiesMetadata.self) }
            do {
                return NorthwindEntitiesMetadata.document_
            }
        }
        set(value) {
            objc_sync_enter(NorthwindEntitiesMetadata.self)
            defer { objc_sync_exit(NorthwindEntitiesMetadata.self) }
            do {
                NorthwindEntitiesMetadata.document_ = value
            }
        }
    }

    private static func resolve() -> CSDLDocument {
        try! NorthwindEntitiesFactory.registerAll()
        NorthwindEntitiesMetadataParser.parsed.hasGeneratedProxies = true
        return NorthwindEntitiesMetadataParser.parsed
    }

    public class EntityTypes {
        private static var alphabeticalListOfProduct_: EntityType = NorthwindEntitiesMetadataParser.parsed.entityType(withName: "NorthwindModel.Alphabetical_list_of_product")

        private static var category_: EntityType = NorthwindEntitiesMetadataParser.parsed.entityType(withName: "NorthwindModel.Category")

        private static var categorySalesFor1997_: EntityType = NorthwindEntitiesMetadataParser.parsed.entityType(withName: "NorthwindModel.Category_Sales_for_1997")

        private static var currentProductList_: EntityType = NorthwindEntitiesMetadataParser.parsed.entityType(withName: "NorthwindModel.Current_Product_List")

        private static var customer_: EntityType = NorthwindEntitiesMetadataParser.parsed.entityType(withName: "NorthwindModel.Customer")

        private static var customerDemographic_: EntityType = NorthwindEntitiesMetadataParser.parsed.entityType(withName: "NorthwindModel.CustomerDemographic")

        private static var customerAndSuppliersByCity_: EntityType = NorthwindEntitiesMetadataParser.parsed.entityType(withName: "NorthwindModel.Customer_and_Suppliers_by_City")

        private static var employee_: EntityType = NorthwindEntitiesMetadataParser.parsed.entityType(withName: "NorthwindModel.Employee")

        private static var invoice_: EntityType = NorthwindEntitiesMetadataParser.parsed.entityType(withName: "NorthwindModel.Invoice")

        private static var order_: EntityType = NorthwindEntitiesMetadataParser.parsed.entityType(withName: "NorthwindModel.Order")

        private static var orderDetail_: EntityType = NorthwindEntitiesMetadataParser.parsed.entityType(withName: "NorthwindModel.Order_Detail")

        private static var orderDetailsExtended_: EntityType = NorthwindEntitiesMetadataParser.parsed.entityType(withName: "NorthwindModel.Order_Details_Extended")

        private static var orderSubtotal_: EntityType = NorthwindEntitiesMetadataParser.parsed.entityType(withName: "NorthwindModel.Order_Subtotal")

        private static var ordersQry_: EntityType = NorthwindEntitiesMetadataParser.parsed.entityType(withName: "NorthwindModel.Orders_Qry")

        private static var product_: EntityType = NorthwindEntitiesMetadataParser.parsed.entityType(withName: "NorthwindModel.Product")

        private static var productSalesFor1997_: EntityType = NorthwindEntitiesMetadataParser.parsed.entityType(withName: "NorthwindModel.Product_Sales_for_1997")

        private static var productsAboveAveragePrice_: EntityType = NorthwindEntitiesMetadataParser.parsed.entityType(withName: "NorthwindModel.Products_Above_Average_Price")

        private static var productsByCategory_: EntityType = NorthwindEntitiesMetadataParser.parsed.entityType(withName: "NorthwindModel.Products_by_Category")

        private static var region_: EntityType = NorthwindEntitiesMetadataParser.parsed.entityType(withName: "NorthwindModel.Region")

        private static var salesTotalsByAmount_: EntityType = NorthwindEntitiesMetadataParser.parsed.entityType(withName: "NorthwindModel.Sales_Totals_by_Amount")

        private static var salesByCategory_: EntityType = NorthwindEntitiesMetadataParser.parsed.entityType(withName: "NorthwindModel.Sales_by_Category")

        private static var shipper_: EntityType = NorthwindEntitiesMetadataParser.parsed.entityType(withName: "NorthwindModel.Shipper")

        private static var summaryOfSalesByQuarter_: EntityType = NorthwindEntitiesMetadataParser.parsed.entityType(withName: "NorthwindModel.Summary_of_Sales_by_Quarter")

        private static var summaryOfSalesByYear_: EntityType = NorthwindEntitiesMetadataParser.parsed.entityType(withName: "NorthwindModel.Summary_of_Sales_by_Year")

        private static var supplier_: EntityType = NorthwindEntitiesMetadataParser.parsed.entityType(withName: "NorthwindModel.Supplier")

        private static var territory_: EntityType = NorthwindEntitiesMetadataParser.parsed.entityType(withName: "NorthwindModel.Territory")

        public static var alphabeticalListOfProduct: EntityType {
            get {
                objc_sync_enter(NorthwindEntitiesMetadata.EntityTypes.self)
                defer { objc_sync_exit(NorthwindEntitiesMetadata.EntityTypes.self) }
                do {
                    return NorthwindEntitiesMetadata.EntityTypes.alphabeticalListOfProduct_
                }
            }
            set(value) {
                objc_sync_enter(NorthwindEntitiesMetadata.EntityTypes.self)
                defer { objc_sync_exit(NorthwindEntitiesMetadata.EntityTypes.self) }
                do {
                    NorthwindEntitiesMetadata.EntityTypes.alphabeticalListOfProduct_ = value
                }
            }
        }

        public static var category: EntityType {
            get {
                objc_sync_enter(NorthwindEntitiesMetadata.EntityTypes.self)
                defer { objc_sync_exit(NorthwindEntitiesMetadata.EntityTypes.self) }
                do {
                    return NorthwindEntitiesMetadata.EntityTypes.category_
                }
            }
            set(value) {
                objc_sync_enter(NorthwindEntitiesMetadata.EntityTypes.self)
                defer { objc_sync_exit(NorthwindEntitiesMetadata.EntityTypes.self) }
                do {
                    NorthwindEntitiesMetadata.EntityTypes.category_ = value
                }
            }
        }

        public static var categorySalesFor1997: EntityType {
            get {
                objc_sync_enter(NorthwindEntitiesMetadata.EntityTypes.self)
                defer { objc_sync_exit(NorthwindEntitiesMetadata.EntityTypes.self) }
                do {
                    return NorthwindEntitiesMetadata.EntityTypes.categorySalesFor1997_
                }
            }
            set(value) {
                objc_sync_enter(NorthwindEntitiesMetadata.EntityTypes.self)
                defer { objc_sync_exit(NorthwindEntitiesMetadata.EntityTypes.self) }
                do {
                    NorthwindEntitiesMetadata.EntityTypes.categorySalesFor1997_ = value
                }
            }
        }

        public static var currentProductList: EntityType {
            get {
                objc_sync_enter(NorthwindEntitiesMetadata.EntityTypes.self)
                defer { objc_sync_exit(NorthwindEntitiesMetadata.EntityTypes.self) }
                do {
                    return NorthwindEntitiesMetadata.EntityTypes.currentProductList_
                }
            }
            set(value) {
                objc_sync_enter(NorthwindEntitiesMetadata.EntityTypes.self)
                defer { objc_sync_exit(NorthwindEntitiesMetadata.EntityTypes.self) }
                do {
                    NorthwindEntitiesMetadata.EntityTypes.currentProductList_ = value
                }
            }
        }

        public static var customer: EntityType {
            get {
                objc_sync_enter(NorthwindEntitiesMetadata.EntityTypes.self)
                defer { objc_sync_exit(NorthwindEntitiesMetadata.EntityTypes.self) }
                do {
                    return NorthwindEntitiesMetadata.EntityTypes.customer_
                }
            }
            set(value) {
                objc_sync_enter(NorthwindEntitiesMetadata.EntityTypes.self)
                defer { objc_sync_exit(NorthwindEntitiesMetadata.EntityTypes.self) }
                do {
                    NorthwindEntitiesMetadata.EntityTypes.customer_ = value
                }
            }
        }

        public static var customerAndSuppliersByCity: EntityType {
            get {
                objc_sync_enter(NorthwindEntitiesMetadata.EntityTypes.self)
                defer { objc_sync_exit(NorthwindEntitiesMetadata.EntityTypes.self) }
                do {
                    return NorthwindEntitiesMetadata.EntityTypes.customerAndSuppliersByCity_
                }
            }
            set(value) {
                objc_sync_enter(NorthwindEntitiesMetadata.EntityTypes.self)
                defer { objc_sync_exit(NorthwindEntitiesMetadata.EntityTypes.self) }
                do {
                    NorthwindEntitiesMetadata.EntityTypes.customerAndSuppliersByCity_ = value
                }
            }
        }

        public static var customerDemographic: EntityType {
            get {
                objc_sync_enter(NorthwindEntitiesMetadata.EntityTypes.self)
                defer { objc_sync_exit(NorthwindEntitiesMetadata.EntityTypes.self) }
                do {
                    return NorthwindEntitiesMetadata.EntityTypes.customerDemographic_
                }
            }
            set(value) {
                objc_sync_enter(NorthwindEntitiesMetadata.EntityTypes.self)
                defer { objc_sync_exit(NorthwindEntitiesMetadata.EntityTypes.self) }
                do {
                    NorthwindEntitiesMetadata.EntityTypes.customerDemographic_ = value
                }
            }
        }

        public static var employee: EntityType {
            get {
                objc_sync_enter(NorthwindEntitiesMetadata.EntityTypes.self)
                defer { objc_sync_exit(NorthwindEntitiesMetadata.EntityTypes.self) }
                do {
                    return NorthwindEntitiesMetadata.EntityTypes.employee_
                }
            }
            set(value) {
                objc_sync_enter(NorthwindEntitiesMetadata.EntityTypes.self)
                defer { objc_sync_exit(NorthwindEntitiesMetadata.EntityTypes.self) }
                do {
                    NorthwindEntitiesMetadata.EntityTypes.employee_ = value
                }
            }
        }

        public static var invoice: EntityType {
            get {
                objc_sync_enter(NorthwindEntitiesMetadata.EntityTypes.self)
                defer { objc_sync_exit(NorthwindEntitiesMetadata.EntityTypes.self) }
                do {
                    return NorthwindEntitiesMetadata.EntityTypes.invoice_
                }
            }
            set(value) {
                objc_sync_enter(NorthwindEntitiesMetadata.EntityTypes.self)
                defer { objc_sync_exit(NorthwindEntitiesMetadata.EntityTypes.self) }
                do {
                    NorthwindEntitiesMetadata.EntityTypes.invoice_ = value
                }
            }
        }

        public static var order: EntityType {
            get {
                objc_sync_enter(NorthwindEntitiesMetadata.EntityTypes.self)
                defer { objc_sync_exit(NorthwindEntitiesMetadata.EntityTypes.self) }
                do {
                    return NorthwindEntitiesMetadata.EntityTypes.order_
                }
            }
            set(value) {
                objc_sync_enter(NorthwindEntitiesMetadata.EntityTypes.self)
                defer { objc_sync_exit(NorthwindEntitiesMetadata.EntityTypes.self) }
                do {
                    NorthwindEntitiesMetadata.EntityTypes.order_ = value
                }
            }
        }

        public static var orderDetail: EntityType {
            get {
                objc_sync_enter(NorthwindEntitiesMetadata.EntityTypes.self)
                defer { objc_sync_exit(NorthwindEntitiesMetadata.EntityTypes.self) }
                do {
                    return NorthwindEntitiesMetadata.EntityTypes.orderDetail_
                }
            }
            set(value) {
                objc_sync_enter(NorthwindEntitiesMetadata.EntityTypes.self)
                defer { objc_sync_exit(NorthwindEntitiesMetadata.EntityTypes.self) }
                do {
                    NorthwindEntitiesMetadata.EntityTypes.orderDetail_ = value
                }
            }
        }

        public static var orderDetailsExtended: EntityType {
            get {
                objc_sync_enter(NorthwindEntitiesMetadata.EntityTypes.self)
                defer { objc_sync_exit(NorthwindEntitiesMetadata.EntityTypes.self) }
                do {
                    return NorthwindEntitiesMetadata.EntityTypes.orderDetailsExtended_
                }
            }
            set(value) {
                objc_sync_enter(NorthwindEntitiesMetadata.EntityTypes.self)
                defer { objc_sync_exit(NorthwindEntitiesMetadata.EntityTypes.self) }
                do {
                    NorthwindEntitiesMetadata.EntityTypes.orderDetailsExtended_ = value
                }
            }
        }

        public static var orderSubtotal: EntityType {
            get {
                objc_sync_enter(NorthwindEntitiesMetadata.EntityTypes.self)
                defer { objc_sync_exit(NorthwindEntitiesMetadata.EntityTypes.self) }
                do {
                    return NorthwindEntitiesMetadata.EntityTypes.orderSubtotal_
                }
            }
            set(value) {
                objc_sync_enter(NorthwindEntitiesMetadata.EntityTypes.self)
                defer { objc_sync_exit(NorthwindEntitiesMetadata.EntityTypes.self) }
                do {
                    NorthwindEntitiesMetadata.EntityTypes.orderSubtotal_ = value
                }
            }
        }

        public static var ordersQry: EntityType {
            get {
                objc_sync_enter(NorthwindEntitiesMetadata.EntityTypes.self)
                defer { objc_sync_exit(NorthwindEntitiesMetadata.EntityTypes.self) }
                do {
                    return NorthwindEntitiesMetadata.EntityTypes.ordersQry_
                }
            }
            set(value) {
                objc_sync_enter(NorthwindEntitiesMetadata.EntityTypes.self)
                defer { objc_sync_exit(NorthwindEntitiesMetadata.EntityTypes.self) }
                do {
                    NorthwindEntitiesMetadata.EntityTypes.ordersQry_ = value
                }
            }
        }

        public static var product: EntityType {
            get {
                objc_sync_enter(NorthwindEntitiesMetadata.EntityTypes.self)
                defer { objc_sync_exit(NorthwindEntitiesMetadata.EntityTypes.self) }
                do {
                    return NorthwindEntitiesMetadata.EntityTypes.product_
                }
            }
            set(value) {
                objc_sync_enter(NorthwindEntitiesMetadata.EntityTypes.self)
                defer { objc_sync_exit(NorthwindEntitiesMetadata.EntityTypes.self) }
                do {
                    NorthwindEntitiesMetadata.EntityTypes.product_ = value
                }
            }
        }

        public static var productSalesFor1997: EntityType {
            get {
                objc_sync_enter(NorthwindEntitiesMetadata.EntityTypes.self)
                defer { objc_sync_exit(NorthwindEntitiesMetadata.EntityTypes.self) }
                do {
                    return NorthwindEntitiesMetadata.EntityTypes.productSalesFor1997_
                }
            }
            set(value) {
                objc_sync_enter(NorthwindEntitiesMetadata.EntityTypes.self)
                defer { objc_sync_exit(NorthwindEntitiesMetadata.EntityTypes.self) }
                do {
                    NorthwindEntitiesMetadata.EntityTypes.productSalesFor1997_ = value
                }
            }
        }

        public static var productsAboveAveragePrice: EntityType {
            get {
                objc_sync_enter(NorthwindEntitiesMetadata.EntityTypes.self)
                defer { objc_sync_exit(NorthwindEntitiesMetadata.EntityTypes.self) }
                do {
                    return NorthwindEntitiesMetadata.EntityTypes.productsAboveAveragePrice_
                }
            }
            set(value) {
                objc_sync_enter(NorthwindEntitiesMetadata.EntityTypes.self)
                defer { objc_sync_exit(NorthwindEntitiesMetadata.EntityTypes.self) }
                do {
                    NorthwindEntitiesMetadata.EntityTypes.productsAboveAveragePrice_ = value
                }
            }
        }

        public static var productsByCategory: EntityType {
            get {
                objc_sync_enter(NorthwindEntitiesMetadata.EntityTypes.self)
                defer { objc_sync_exit(NorthwindEntitiesMetadata.EntityTypes.self) }
                do {
                    return NorthwindEntitiesMetadata.EntityTypes.productsByCategory_
                }
            }
            set(value) {
                objc_sync_enter(NorthwindEntitiesMetadata.EntityTypes.self)
                defer { objc_sync_exit(NorthwindEntitiesMetadata.EntityTypes.self) }
                do {
                    NorthwindEntitiesMetadata.EntityTypes.productsByCategory_ = value
                }
            }
        }

        public static var region: EntityType {
            get {
                objc_sync_enter(NorthwindEntitiesMetadata.EntityTypes.self)
                defer { objc_sync_exit(NorthwindEntitiesMetadata.EntityTypes.self) }
                do {
                    return NorthwindEntitiesMetadata.EntityTypes.region_
                }
            }
            set(value) {
                objc_sync_enter(NorthwindEntitiesMetadata.EntityTypes.self)
                defer { objc_sync_exit(NorthwindEntitiesMetadata.EntityTypes.self) }
                do {
                    NorthwindEntitiesMetadata.EntityTypes.region_ = value
                }
            }
        }

        public static var salesByCategory: EntityType {
            get {
                objc_sync_enter(NorthwindEntitiesMetadata.EntityTypes.self)
                defer { objc_sync_exit(NorthwindEntitiesMetadata.EntityTypes.self) }
                do {
                    return NorthwindEntitiesMetadata.EntityTypes.salesByCategory_
                }
            }
            set(value) {
                objc_sync_enter(NorthwindEntitiesMetadata.EntityTypes.self)
                defer { objc_sync_exit(NorthwindEntitiesMetadata.EntityTypes.self) }
                do {
                    NorthwindEntitiesMetadata.EntityTypes.salesByCategory_ = value
                }
            }
        }

        public static var salesTotalsByAmount: EntityType {
            get {
                objc_sync_enter(NorthwindEntitiesMetadata.EntityTypes.self)
                defer { objc_sync_exit(NorthwindEntitiesMetadata.EntityTypes.self) }
                do {
                    return NorthwindEntitiesMetadata.EntityTypes.salesTotalsByAmount_
                }
            }
            set(value) {
                objc_sync_enter(NorthwindEntitiesMetadata.EntityTypes.self)
                defer { objc_sync_exit(NorthwindEntitiesMetadata.EntityTypes.self) }
                do {
                    NorthwindEntitiesMetadata.EntityTypes.salesTotalsByAmount_ = value
                }
            }
        }

        public static var shipper: EntityType {
            get {
                objc_sync_enter(NorthwindEntitiesMetadata.EntityTypes.self)
                defer { objc_sync_exit(NorthwindEntitiesMetadata.EntityTypes.self) }
                do {
                    return NorthwindEntitiesMetadata.EntityTypes.shipper_
                }
            }
            set(value) {
                objc_sync_enter(NorthwindEntitiesMetadata.EntityTypes.self)
                defer { objc_sync_exit(NorthwindEntitiesMetadata.EntityTypes.self) }
                do {
                    NorthwindEntitiesMetadata.EntityTypes.shipper_ = value
                }
            }
        }

        public static var summaryOfSalesByQuarter: EntityType {
            get {
                objc_sync_enter(NorthwindEntitiesMetadata.EntityTypes.self)
                defer { objc_sync_exit(NorthwindEntitiesMetadata.EntityTypes.self) }
                do {
                    return NorthwindEntitiesMetadata.EntityTypes.summaryOfSalesByQuarter_
                }
            }
            set(value) {
                objc_sync_enter(NorthwindEntitiesMetadata.EntityTypes.self)
                defer { objc_sync_exit(NorthwindEntitiesMetadata.EntityTypes.self) }
                do {
                    NorthwindEntitiesMetadata.EntityTypes.summaryOfSalesByQuarter_ = value
                }
            }
        }

        public static var summaryOfSalesByYear: EntityType {
            get {
                objc_sync_enter(NorthwindEntitiesMetadata.EntityTypes.self)
                defer { objc_sync_exit(NorthwindEntitiesMetadata.EntityTypes.self) }
                do {
                    return NorthwindEntitiesMetadata.EntityTypes.summaryOfSalesByYear_
                }
            }
            set(value) {
                objc_sync_enter(NorthwindEntitiesMetadata.EntityTypes.self)
                defer { objc_sync_exit(NorthwindEntitiesMetadata.EntityTypes.self) }
                do {
                    NorthwindEntitiesMetadata.EntityTypes.summaryOfSalesByYear_ = value
                }
            }
        }

        public static var supplier: EntityType {
            get {
                objc_sync_enter(NorthwindEntitiesMetadata.EntityTypes.self)
                defer { objc_sync_exit(NorthwindEntitiesMetadata.EntityTypes.self) }
                do {
                    return NorthwindEntitiesMetadata.EntityTypes.supplier_
                }
            }
            set(value) {
                objc_sync_enter(NorthwindEntitiesMetadata.EntityTypes.self)
                defer { objc_sync_exit(NorthwindEntitiesMetadata.EntityTypes.self) }
                do {
                    NorthwindEntitiesMetadata.EntityTypes.supplier_ = value
                }
            }
        }

        public static var territory: EntityType {
            get {
                objc_sync_enter(NorthwindEntitiesMetadata.EntityTypes.self)
                defer { objc_sync_exit(NorthwindEntitiesMetadata.EntityTypes.self) }
                do {
                    return NorthwindEntitiesMetadata.EntityTypes.territory_
                }
            }
            set(value) {
                objc_sync_enter(NorthwindEntitiesMetadata.EntityTypes.self)
                defer { objc_sync_exit(NorthwindEntitiesMetadata.EntityTypes.self) }
                do {
                    NorthwindEntitiesMetadata.EntityTypes.territory_ = value
                }
            }
        }
    }

    public class EntitySets {
        private static var alphabeticalListOfProducts_: EntitySet = NorthwindEntitiesMetadataParser.parsed.entitySet(withName: "Alphabetical_list_of_products")

        private static var categories_: EntitySet = NorthwindEntitiesMetadataParser.parsed.entitySet(withName: "Categories")

        private static var categorySalesFor1997_: EntitySet = NorthwindEntitiesMetadataParser.parsed.entitySet(withName: "Category_Sales_for_1997")

        private static var currentProductLists_: EntitySet = NorthwindEntitiesMetadataParser.parsed.entitySet(withName: "Current_Product_Lists")

        private static var customerDemographics_: EntitySet = NorthwindEntitiesMetadataParser.parsed.entitySet(withName: "CustomerDemographics")

        private static var customerAndSuppliersByCities_: EntitySet = NorthwindEntitiesMetadataParser.parsed.entitySet(withName: "Customer_and_Suppliers_by_Cities")

        private static var customers_: EntitySet = NorthwindEntitiesMetadataParser.parsed.entitySet(withName: "Customers")

        private static var employees_: EntitySet = NorthwindEntitiesMetadataParser.parsed.entitySet(withName: "Employees")

        private static var invoices_: EntitySet = NorthwindEntitiesMetadataParser.parsed.entitySet(withName: "Invoices")

        private static var orderDetails_: EntitySet = NorthwindEntitiesMetadataParser.parsed.entitySet(withName: "Order_Details")

        private static var orderDetailsExtendeds_: EntitySet = NorthwindEntitiesMetadataParser.parsed.entitySet(withName: "Order_Details_Extendeds")

        private static var orderSubtotals_: EntitySet = NorthwindEntitiesMetadataParser.parsed.entitySet(withName: "Order_Subtotals")

        private static var orders_: EntitySet = NorthwindEntitiesMetadataParser.parsed.entitySet(withName: "Orders")

        private static var ordersQries_: EntitySet = NorthwindEntitiesMetadataParser.parsed.entitySet(withName: "Orders_Qries")

        private static var productSalesFor1997_: EntitySet = NorthwindEntitiesMetadataParser.parsed.entitySet(withName: "Product_Sales_for_1997")

        private static var products_: EntitySet = NorthwindEntitiesMetadataParser.parsed.entitySet(withName: "Products")

        private static var productsAboveAveragePrices_: EntitySet = NorthwindEntitiesMetadataParser.parsed.entitySet(withName: "Products_Above_Average_Prices")

        private static var productsByCategories_: EntitySet = NorthwindEntitiesMetadataParser.parsed.entitySet(withName: "Products_by_Categories")

        private static var regions_: EntitySet = NorthwindEntitiesMetadataParser.parsed.entitySet(withName: "Regions")

        private static var salesTotalsByAmounts_: EntitySet = NorthwindEntitiesMetadataParser.parsed.entitySet(withName: "Sales_Totals_by_Amounts")

        private static var salesByCategories_: EntitySet = NorthwindEntitiesMetadataParser.parsed.entitySet(withName: "Sales_by_Categories")

        private static var shippers_: EntitySet = NorthwindEntitiesMetadataParser.parsed.entitySet(withName: "Shippers")

        private static var summaryOfSalesByQuarters_: EntitySet = NorthwindEntitiesMetadataParser.parsed.entitySet(withName: "Summary_of_Sales_by_Quarters")

        private static var summaryOfSalesByYears_: EntitySet = NorthwindEntitiesMetadataParser.parsed.entitySet(withName: "Summary_of_Sales_by_Years")

        private static var suppliers_: EntitySet = NorthwindEntitiesMetadataParser.parsed.entitySet(withName: "Suppliers")

        private static var territories_: EntitySet = NorthwindEntitiesMetadataParser.parsed.entitySet(withName: "Territories")

        public static var alphabeticalListOfProducts: EntitySet {
            get {
                objc_sync_enter(NorthwindEntitiesMetadata.EntitySets.self)
                defer { objc_sync_exit(NorthwindEntitiesMetadata.EntitySets.self) }
                do {
                    return NorthwindEntitiesMetadata.EntitySets.alphabeticalListOfProducts_
                }
            }
            set(value) {
                objc_sync_enter(NorthwindEntitiesMetadata.EntitySets.self)
                defer { objc_sync_exit(NorthwindEntitiesMetadata.EntitySets.self) }
                do {
                    NorthwindEntitiesMetadata.EntitySets.alphabeticalListOfProducts_ = value
                }
            }
        }

        public static var categories: EntitySet {
            get {
                objc_sync_enter(NorthwindEntitiesMetadata.EntitySets.self)
                defer { objc_sync_exit(NorthwindEntitiesMetadata.EntitySets.self) }
                do {
                    return NorthwindEntitiesMetadata.EntitySets.categories_
                }
            }
            set(value) {
                objc_sync_enter(NorthwindEntitiesMetadata.EntitySets.self)
                defer { objc_sync_exit(NorthwindEntitiesMetadata.EntitySets.self) }
                do {
                    NorthwindEntitiesMetadata.EntitySets.categories_ = value
                }
            }
        }

        public static var categorySalesFor1997: EntitySet {
            get {
                objc_sync_enter(NorthwindEntitiesMetadata.EntitySets.self)
                defer { objc_sync_exit(NorthwindEntitiesMetadata.EntitySets.self) }
                do {
                    return NorthwindEntitiesMetadata.EntitySets.categorySalesFor1997_
                }
            }
            set(value) {
                objc_sync_enter(NorthwindEntitiesMetadata.EntitySets.self)
                defer { objc_sync_exit(NorthwindEntitiesMetadata.EntitySets.self) }
                do {
                    NorthwindEntitiesMetadata.EntitySets.categorySalesFor1997_ = value
                }
            }
        }

        public static var currentProductLists: EntitySet {
            get {
                objc_sync_enter(NorthwindEntitiesMetadata.EntitySets.self)
                defer { objc_sync_exit(NorthwindEntitiesMetadata.EntitySets.self) }
                do {
                    return NorthwindEntitiesMetadata.EntitySets.currentProductLists_
                }
            }
            set(value) {
                objc_sync_enter(NorthwindEntitiesMetadata.EntitySets.self)
                defer { objc_sync_exit(NorthwindEntitiesMetadata.EntitySets.self) }
                do {
                    NorthwindEntitiesMetadata.EntitySets.currentProductLists_ = value
                }
            }
        }

        public static var customerAndSuppliersByCities: EntitySet {
            get {
                objc_sync_enter(NorthwindEntitiesMetadata.EntitySets.self)
                defer { objc_sync_exit(NorthwindEntitiesMetadata.EntitySets.self) }
                do {
                    return NorthwindEntitiesMetadata.EntitySets.customerAndSuppliersByCities_
                }
            }
            set(value) {
                objc_sync_enter(NorthwindEntitiesMetadata.EntitySets.self)
                defer { objc_sync_exit(NorthwindEntitiesMetadata.EntitySets.self) }
                do {
                    NorthwindEntitiesMetadata.EntitySets.customerAndSuppliersByCities_ = value
                }
            }
        }

        public static var customerDemographics: EntitySet {
            get {
                objc_sync_enter(NorthwindEntitiesMetadata.EntitySets.self)
                defer { objc_sync_exit(NorthwindEntitiesMetadata.EntitySets.self) }
                do {
                    return NorthwindEntitiesMetadata.EntitySets.customerDemographics_
                }
            }
            set(value) {
                objc_sync_enter(NorthwindEntitiesMetadata.EntitySets.self)
                defer { objc_sync_exit(NorthwindEntitiesMetadata.EntitySets.self) }
                do {
                    NorthwindEntitiesMetadata.EntitySets.customerDemographics_ = value
                }
            }
        }

        public static var customers: EntitySet {
            get {
                objc_sync_enter(NorthwindEntitiesMetadata.EntitySets.self)
                defer { objc_sync_exit(NorthwindEntitiesMetadata.EntitySets.self) }
                do {
                    return NorthwindEntitiesMetadata.EntitySets.customers_
                }
            }
            set(value) {
                objc_sync_enter(NorthwindEntitiesMetadata.EntitySets.self)
                defer { objc_sync_exit(NorthwindEntitiesMetadata.EntitySets.self) }
                do {
                    NorthwindEntitiesMetadata.EntitySets.customers_ = value
                }
            }
        }

        public static var employees: EntitySet {
            get {
                objc_sync_enter(NorthwindEntitiesMetadata.EntitySets.self)
                defer { objc_sync_exit(NorthwindEntitiesMetadata.EntitySets.self) }
                do {
                    return NorthwindEntitiesMetadata.EntitySets.employees_
                }
            }
            set(value) {
                objc_sync_enter(NorthwindEntitiesMetadata.EntitySets.self)
                defer { objc_sync_exit(NorthwindEntitiesMetadata.EntitySets.self) }
                do {
                    NorthwindEntitiesMetadata.EntitySets.employees_ = value
                }
            }
        }

        public static var invoices: EntitySet {
            get {
                objc_sync_enter(NorthwindEntitiesMetadata.EntitySets.self)
                defer { objc_sync_exit(NorthwindEntitiesMetadata.EntitySets.self) }
                do {
                    return NorthwindEntitiesMetadata.EntitySets.invoices_
                }
            }
            set(value) {
                objc_sync_enter(NorthwindEntitiesMetadata.EntitySets.self)
                defer { objc_sync_exit(NorthwindEntitiesMetadata.EntitySets.self) }
                do {
                    NorthwindEntitiesMetadata.EntitySets.invoices_ = value
                }
            }
        }

        public static var orderDetails: EntitySet {
            get {
                objc_sync_enter(NorthwindEntitiesMetadata.EntitySets.self)
                defer { objc_sync_exit(NorthwindEntitiesMetadata.EntitySets.self) }
                do {
                    return NorthwindEntitiesMetadata.EntitySets.orderDetails_
                }
            }
            set(value) {
                objc_sync_enter(NorthwindEntitiesMetadata.EntitySets.self)
                defer { objc_sync_exit(NorthwindEntitiesMetadata.EntitySets.self) }
                do {
                    NorthwindEntitiesMetadata.EntitySets.orderDetails_ = value
                }
            }
        }

        public static var orderDetailsExtendeds: EntitySet {
            get {
                objc_sync_enter(NorthwindEntitiesMetadata.EntitySets.self)
                defer { objc_sync_exit(NorthwindEntitiesMetadata.EntitySets.self) }
                do {
                    return NorthwindEntitiesMetadata.EntitySets.orderDetailsExtendeds_
                }
            }
            set(value) {
                objc_sync_enter(NorthwindEntitiesMetadata.EntitySets.self)
                defer { objc_sync_exit(NorthwindEntitiesMetadata.EntitySets.self) }
                do {
                    NorthwindEntitiesMetadata.EntitySets.orderDetailsExtendeds_ = value
                }
            }
        }

        public static var orderSubtotals: EntitySet {
            get {
                objc_sync_enter(NorthwindEntitiesMetadata.EntitySets.self)
                defer { objc_sync_exit(NorthwindEntitiesMetadata.EntitySets.self) }
                do {
                    return NorthwindEntitiesMetadata.EntitySets.orderSubtotals_
                }
            }
            set(value) {
                objc_sync_enter(NorthwindEntitiesMetadata.EntitySets.self)
                defer { objc_sync_exit(NorthwindEntitiesMetadata.EntitySets.self) }
                do {
                    NorthwindEntitiesMetadata.EntitySets.orderSubtotals_ = value
                }
            }
        }

        public static var orders: EntitySet {
            get {
                objc_sync_enter(NorthwindEntitiesMetadata.EntitySets.self)
                defer { objc_sync_exit(NorthwindEntitiesMetadata.EntitySets.self) }
                do {
                    return NorthwindEntitiesMetadata.EntitySets.orders_
                }
            }
            set(value) {
                objc_sync_enter(NorthwindEntitiesMetadata.EntitySets.self)
                defer { objc_sync_exit(NorthwindEntitiesMetadata.EntitySets.self) }
                do {
                    NorthwindEntitiesMetadata.EntitySets.orders_ = value
                }
            }
        }

        public static var ordersQries: EntitySet {
            get {
                objc_sync_enter(NorthwindEntitiesMetadata.EntitySets.self)
                defer { objc_sync_exit(NorthwindEntitiesMetadata.EntitySets.self) }
                do {
                    return NorthwindEntitiesMetadata.EntitySets.ordersQries_
                }
            }
            set(value) {
                objc_sync_enter(NorthwindEntitiesMetadata.EntitySets.self)
                defer { objc_sync_exit(NorthwindEntitiesMetadata.EntitySets.self) }
                do {
                    NorthwindEntitiesMetadata.EntitySets.ordersQries_ = value
                }
            }
        }

        public static var productSalesFor1997: EntitySet {
            get {
                objc_sync_enter(NorthwindEntitiesMetadata.EntitySets.self)
                defer { objc_sync_exit(NorthwindEntitiesMetadata.EntitySets.self) }
                do {
                    return NorthwindEntitiesMetadata.EntitySets.productSalesFor1997_
                }
            }
            set(value) {
                objc_sync_enter(NorthwindEntitiesMetadata.EntitySets.self)
                defer { objc_sync_exit(NorthwindEntitiesMetadata.EntitySets.self) }
                do {
                    NorthwindEntitiesMetadata.EntitySets.productSalesFor1997_ = value
                }
            }
        }

        public static var products: EntitySet {
            get {
                objc_sync_enter(NorthwindEntitiesMetadata.EntitySets.self)
                defer { objc_sync_exit(NorthwindEntitiesMetadata.EntitySets.self) }
                do {
                    return NorthwindEntitiesMetadata.EntitySets.products_
                }
            }
            set(value) {
                objc_sync_enter(NorthwindEntitiesMetadata.EntitySets.self)
                defer { objc_sync_exit(NorthwindEntitiesMetadata.EntitySets.self) }
                do {
                    NorthwindEntitiesMetadata.EntitySets.products_ = value
                }
            }
        }

        public static var productsAboveAveragePrices: EntitySet {
            get {
                objc_sync_enter(NorthwindEntitiesMetadata.EntitySets.self)
                defer { objc_sync_exit(NorthwindEntitiesMetadata.EntitySets.self) }
                do {
                    return NorthwindEntitiesMetadata.EntitySets.productsAboveAveragePrices_
                }
            }
            set(value) {
                objc_sync_enter(NorthwindEntitiesMetadata.EntitySets.self)
                defer { objc_sync_exit(NorthwindEntitiesMetadata.EntitySets.self) }
                do {
                    NorthwindEntitiesMetadata.EntitySets.productsAboveAveragePrices_ = value
                }
            }
        }

        public static var productsByCategories: EntitySet {
            get {
                objc_sync_enter(NorthwindEntitiesMetadata.EntitySets.self)
                defer { objc_sync_exit(NorthwindEntitiesMetadata.EntitySets.self) }
                do {
                    return NorthwindEntitiesMetadata.EntitySets.productsByCategories_
                }
            }
            set(value) {
                objc_sync_enter(NorthwindEntitiesMetadata.EntitySets.self)
                defer { objc_sync_exit(NorthwindEntitiesMetadata.EntitySets.self) }
                do {
                    NorthwindEntitiesMetadata.EntitySets.productsByCategories_ = value
                }
            }
        }

        public static var regions: EntitySet {
            get {
                objc_sync_enter(NorthwindEntitiesMetadata.EntitySets.self)
                defer { objc_sync_exit(NorthwindEntitiesMetadata.EntitySets.self) }
                do {
                    return NorthwindEntitiesMetadata.EntitySets.regions_
                }
            }
            set(value) {
                objc_sync_enter(NorthwindEntitiesMetadata.EntitySets.self)
                defer { objc_sync_exit(NorthwindEntitiesMetadata.EntitySets.self) }
                do {
                    NorthwindEntitiesMetadata.EntitySets.regions_ = value
                }
            }
        }

        public static var salesByCategories: EntitySet {
            get {
                objc_sync_enter(NorthwindEntitiesMetadata.EntitySets.self)
                defer { objc_sync_exit(NorthwindEntitiesMetadata.EntitySets.self) }
                do {
                    return NorthwindEntitiesMetadata.EntitySets.salesByCategories_
                }
            }
            set(value) {
                objc_sync_enter(NorthwindEntitiesMetadata.EntitySets.self)
                defer { objc_sync_exit(NorthwindEntitiesMetadata.EntitySets.self) }
                do {
                    NorthwindEntitiesMetadata.EntitySets.salesByCategories_ = value
                }
            }
        }

        public static var salesTotalsByAmounts: EntitySet {
            get {
                objc_sync_enter(NorthwindEntitiesMetadata.EntitySets.self)
                defer { objc_sync_exit(NorthwindEntitiesMetadata.EntitySets.self) }
                do {
                    return NorthwindEntitiesMetadata.EntitySets.salesTotalsByAmounts_
                }
            }
            set(value) {
                objc_sync_enter(NorthwindEntitiesMetadata.EntitySets.self)
                defer { objc_sync_exit(NorthwindEntitiesMetadata.EntitySets.self) }
                do {
                    NorthwindEntitiesMetadata.EntitySets.salesTotalsByAmounts_ = value
                }
            }
        }

        public static var shippers: EntitySet {
            get {
                objc_sync_enter(NorthwindEntitiesMetadata.EntitySets.self)
                defer { objc_sync_exit(NorthwindEntitiesMetadata.EntitySets.self) }
                do {
                    return NorthwindEntitiesMetadata.EntitySets.shippers_
                }
            }
            set(value) {
                objc_sync_enter(NorthwindEntitiesMetadata.EntitySets.self)
                defer { objc_sync_exit(NorthwindEntitiesMetadata.EntitySets.self) }
                do {
                    NorthwindEntitiesMetadata.EntitySets.shippers_ = value
                }
            }
        }

        public static var summaryOfSalesByQuarters: EntitySet {
            get {
                objc_sync_enter(NorthwindEntitiesMetadata.EntitySets.self)
                defer { objc_sync_exit(NorthwindEntitiesMetadata.EntitySets.self) }
                do {
                    return NorthwindEntitiesMetadata.EntitySets.summaryOfSalesByQuarters_
                }
            }
            set(value) {
                objc_sync_enter(NorthwindEntitiesMetadata.EntitySets.self)
                defer { objc_sync_exit(NorthwindEntitiesMetadata.EntitySets.self) }
                do {
                    NorthwindEntitiesMetadata.EntitySets.summaryOfSalesByQuarters_ = value
                }
            }
        }

        public static var summaryOfSalesByYears: EntitySet {
            get {
                objc_sync_enter(NorthwindEntitiesMetadata.EntitySets.self)
                defer { objc_sync_exit(NorthwindEntitiesMetadata.EntitySets.self) }
                do {
                    return NorthwindEntitiesMetadata.EntitySets.summaryOfSalesByYears_
                }
            }
            set(value) {
                objc_sync_enter(NorthwindEntitiesMetadata.EntitySets.self)
                defer { objc_sync_exit(NorthwindEntitiesMetadata.EntitySets.self) }
                do {
                    NorthwindEntitiesMetadata.EntitySets.summaryOfSalesByYears_ = value
                }
            }
        }

        public static var suppliers: EntitySet {
            get {
                objc_sync_enter(NorthwindEntitiesMetadata.EntitySets.self)
                defer { objc_sync_exit(NorthwindEntitiesMetadata.EntitySets.self) }
                do {
                    return NorthwindEntitiesMetadata.EntitySets.suppliers_
                }
            }
            set(value) {
                objc_sync_enter(NorthwindEntitiesMetadata.EntitySets.self)
                defer { objc_sync_exit(NorthwindEntitiesMetadata.EntitySets.self) }
                do {
                    NorthwindEntitiesMetadata.EntitySets.suppliers_ = value
                }
            }
        }

        public static var territories: EntitySet {
            get {
                objc_sync_enter(NorthwindEntitiesMetadata.EntitySets.self)
                defer { objc_sync_exit(NorthwindEntitiesMetadata.EntitySets.self) }
                do {
                    return NorthwindEntitiesMetadata.EntitySets.territories_
                }
            }
            set(value) {
                objc_sync_enter(NorthwindEntitiesMetadata.EntitySets.self)
                defer { objc_sync_exit(NorthwindEntitiesMetadata.EntitySets.self) }
                do {
                    NorthwindEntitiesMetadata.EntitySets.territories_ = value
                }
            }
        }
    }
}
