// # Proxy Compiler 18.9.4-973a4d-20181128

import Foundation
import SAPOData

open class Invoice: EntityValue {
    public required init(from decoder: Decoder) throws {
        try super.init(from: decoder)
    }

    private static var shipName_: Property = NorthwindEntitiesMetadata.EntityTypes.invoice.property(withName: "ShipName")

    private static var shipAddress_: Property = NorthwindEntitiesMetadata.EntityTypes.invoice.property(withName: "ShipAddress")

    private static var shipCity_: Property = NorthwindEntitiesMetadata.EntityTypes.invoice.property(withName: "ShipCity")

    private static var shipRegion_: Property = NorthwindEntitiesMetadata.EntityTypes.invoice.property(withName: "ShipRegion")

    private static var shipPostalCode_: Property = NorthwindEntitiesMetadata.EntityTypes.invoice.property(withName: "ShipPostalCode")

    private static var shipCountry_: Property = NorthwindEntitiesMetadata.EntityTypes.invoice.property(withName: "ShipCountry")

    private static var customerID_: Property = NorthwindEntitiesMetadata.EntityTypes.invoice.property(withName: "CustomerID")

    private static var customerName_: Property = NorthwindEntitiesMetadata.EntityTypes.invoice.property(withName: "CustomerName")

    private static var address_: Property = NorthwindEntitiesMetadata.EntityTypes.invoice.property(withName: "Address")

    private static var city_: Property = NorthwindEntitiesMetadata.EntityTypes.invoice.property(withName: "City")

    private static var region_: Property = NorthwindEntitiesMetadata.EntityTypes.invoice.property(withName: "Region")

    private static var postalCode_: Property = NorthwindEntitiesMetadata.EntityTypes.invoice.property(withName: "PostalCode")

    private static var country_: Property = NorthwindEntitiesMetadata.EntityTypes.invoice.property(withName: "Country")

    private static var salesperson_: Property = NorthwindEntitiesMetadata.EntityTypes.invoice.property(withName: "Salesperson")

    private static var orderID_: Property = NorthwindEntitiesMetadata.EntityTypes.invoice.property(withName: "OrderID")

    private static var orderDate_: Property = NorthwindEntitiesMetadata.EntityTypes.invoice.property(withName: "OrderDate")

    private static var requiredDate_: Property = NorthwindEntitiesMetadata.EntityTypes.invoice.property(withName: "RequiredDate")

    private static var shippedDate_: Property = NorthwindEntitiesMetadata.EntityTypes.invoice.property(withName: "ShippedDate")

    private static var shipperName_: Property = NorthwindEntitiesMetadata.EntityTypes.invoice.property(withName: "ShipperName")

    private static var productID_: Property = NorthwindEntitiesMetadata.EntityTypes.invoice.property(withName: "ProductID")

    private static var productName_: Property = NorthwindEntitiesMetadata.EntityTypes.invoice.property(withName: "ProductName")

    private static var unitPrice_: Property = NorthwindEntitiesMetadata.EntityTypes.invoice.property(withName: "UnitPrice")

    private static var quantity_: Property = NorthwindEntitiesMetadata.EntityTypes.invoice.property(withName: "Quantity")

    private static var discount_: Property = NorthwindEntitiesMetadata.EntityTypes.invoice.property(withName: "Discount")

    private static var extendedPrice_: Property = NorthwindEntitiesMetadata.EntityTypes.invoice.property(withName: "ExtendedPrice")

    private static var freight_: Property = NorthwindEntitiesMetadata.EntityTypes.invoice.property(withName: "Freight")

    public init(withDefaults: Bool = true) {
        super.init(withDefaults: withDefaults, type: NorthwindEntitiesMetadata.EntityTypes.invoice)
    }

    open class var address: Property {
        get {
            objc_sync_enter(Invoice.self)
            defer { objc_sync_exit(Invoice.self) }
            do {
                return Invoice.address_
            }
        }
        set(value) {
            objc_sync_enter(Invoice.self)
            defer { objc_sync_exit(Invoice.self) }
            do {
                Invoice.address_ = value
            }
        }
    }

    open var address: String? {
        get {
            return StringValue.optional(self.optionalValue(for: Invoice.address))
        }
        set(value) {
            self.setOptionalValue(for: Invoice.address, to: StringValue.of(optional: value))
        }
    }

    open class func array(from: EntityValueList) -> Array<Invoice> {
        return ArrayConverter.convert(from.toArray(), Array<Invoice>())
    }

    open class var city: Property {
        get {
            objc_sync_enter(Invoice.self)
            defer { objc_sync_exit(Invoice.self) }
            do {
                return Invoice.city_
            }
        }
        set(value) {
            objc_sync_enter(Invoice.self)
            defer { objc_sync_exit(Invoice.self) }
            do {
                Invoice.city_ = value
            }
        }
    }

    open var city: String? {
        get {
            return StringValue.optional(self.optionalValue(for: Invoice.city))
        }
        set(value) {
            self.setOptionalValue(for: Invoice.city, to: StringValue.of(optional: value))
        }
    }

    open func copy() -> Invoice {
        return CastRequired<Invoice>.from(self.copyEntity())
    }

    open class var country: Property {
        get {
            objc_sync_enter(Invoice.self)
            defer { objc_sync_exit(Invoice.self) }
            do {
                return Invoice.country_
            }
        }
        set(value) {
            objc_sync_enter(Invoice.self)
            defer { objc_sync_exit(Invoice.self) }
            do {
                Invoice.country_ = value
            }
        }
    }

    open var country: String? {
        get {
            return StringValue.optional(self.optionalValue(for: Invoice.country))
        }
        set(value) {
            self.setOptionalValue(for: Invoice.country, to: StringValue.of(optional: value))
        }
    }

    open class var customerID: Property {
        get {
            objc_sync_enter(Invoice.self)
            defer { objc_sync_exit(Invoice.self) }
            do {
                return Invoice.customerID_
            }
        }
        set(value) {
            objc_sync_enter(Invoice.self)
            defer { objc_sync_exit(Invoice.self) }
            do {
                Invoice.customerID_ = value
            }
        }
    }

    open var customerID: String? {
        get {
            return StringValue.optional(self.optionalValue(for: Invoice.customerID))
        }
        set(value) {
            self.setOptionalValue(for: Invoice.customerID, to: StringValue.of(optional: value))
        }
    }

    open class var customerName: Property {
        get {
            objc_sync_enter(Invoice.self)
            defer { objc_sync_exit(Invoice.self) }
            do {
                return Invoice.customerName_
            }
        }
        set(value) {
            objc_sync_enter(Invoice.self)
            defer { objc_sync_exit(Invoice.self) }
            do {
                Invoice.customerName_ = value
            }
        }
    }

    open var customerName: String? {
        get {
            return StringValue.optional(self.optionalValue(for: Invoice.customerName))
        }
        set(value) {
            self.setOptionalValue(for: Invoice.customerName, to: StringValue.of(optional: value))
        }
    }

    open class var discount: Property {
        get {
            objc_sync_enter(Invoice.self)
            defer { objc_sync_exit(Invoice.self) }
            do {
                return Invoice.discount_
            }
        }
        set(value) {
            objc_sync_enter(Invoice.self)
            defer { objc_sync_exit(Invoice.self) }
            do {
                Invoice.discount_ = value
            }
        }
    }

    open var discount: Float? {
        get {
            return FloatValue.optional(self.optionalValue(for: Invoice.discount))
        }
        set(value) {
            self.setOptionalValue(for: Invoice.discount, to: FloatValue.of(optional: value))
        }
    }

    open class var extendedPrice: Property {
        get {
            objc_sync_enter(Invoice.self)
            defer { objc_sync_exit(Invoice.self) }
            do {
                return Invoice.extendedPrice_
            }
        }
        set(value) {
            objc_sync_enter(Invoice.self)
            defer { objc_sync_exit(Invoice.self) }
            do {
                Invoice.extendedPrice_ = value
            }
        }
    }

    open var extendedPrice: BigDecimal? {
        get {
            return DecimalValue.optional(self.optionalValue(for: Invoice.extendedPrice))
        }
        set(value) {
            self.setOptionalValue(for: Invoice.extendedPrice, to: DecimalValue.of(optional: value))
        }
    }

    open class var freight: Property {
        get {
            objc_sync_enter(Invoice.self)
            defer { objc_sync_exit(Invoice.self) }
            do {
                return Invoice.freight_
            }
        }
        set(value) {
            objc_sync_enter(Invoice.self)
            defer { objc_sync_exit(Invoice.self) }
            do {
                Invoice.freight_ = value
            }
        }
    }

    open var freight: BigDecimal? {
        get {
            return DecimalValue.optional(self.optionalValue(for: Invoice.freight))
        }
        set(value) {
            self.setOptionalValue(for: Invoice.freight, to: DecimalValue.of(optional: value))
        }
    }

    open override var isProxy: Bool {
        return true
    }

    open class func key(customerName: String?, discount: Float?, orderID: Int?, productID: Int?, productName: String?, quantity: Int?, salesperson: String?, shipperName: String?, unitPrice: BigDecimal?) -> EntityKey {
        return EntityKey().with(name: "CustomerName", value: StringValue.of(optional: customerName)).with(name: "Discount", value: FloatValue.of(optional: discount)).with(name: "OrderID", value: IntValue.of(optional: orderID)).with(name: "ProductID", value: IntValue.of(optional: productID)).with(name: "ProductName", value: StringValue.of(optional: productName)).with(name: "Quantity", value: ShortValue.of(optional: quantity)).with(name: "Salesperson", value: StringValue.of(optional: salesperson)).with(name: "ShipperName", value: StringValue.of(optional: shipperName)).with(name: "UnitPrice", value: DecimalValue.of(optional: unitPrice))
    }

    open var old: Invoice {
        return CastRequired<Invoice>.from(self.oldEntity)
    }

    open class var orderDate: Property {
        get {
            objc_sync_enter(Invoice.self)
            defer { objc_sync_exit(Invoice.self) }
            do {
                return Invoice.orderDate_
            }
        }
        set(value) {
            objc_sync_enter(Invoice.self)
            defer { objc_sync_exit(Invoice.self) }
            do {
                Invoice.orderDate_ = value
            }
        }
    }

    open var orderDate: LocalDateTime? {
        get {
            return LocalDateTime.castOptional(self.optionalValue(for: Invoice.orderDate))
        }
        set(value) {
            self.setOptionalValue(for: Invoice.orderDate, to: value)
        }
    }

    open class var orderID: Property {
        get {
            objc_sync_enter(Invoice.self)
            defer { objc_sync_exit(Invoice.self) }
            do {
                return Invoice.orderID_
            }
        }
        set(value) {
            objc_sync_enter(Invoice.self)
            defer { objc_sync_exit(Invoice.self) }
            do {
                Invoice.orderID_ = value
            }
        }
    }

    open var orderID: Int? {
        get {
            return IntValue.optional(self.optionalValue(for: Invoice.orderID))
        }
        set(value) {
            self.setOptionalValue(for: Invoice.orderID, to: IntValue.of(optional: value))
        }
    }

    open class var postalCode: Property {
        get {
            objc_sync_enter(Invoice.self)
            defer { objc_sync_exit(Invoice.self) }
            do {
                return Invoice.postalCode_
            }
        }
        set(value) {
            objc_sync_enter(Invoice.self)
            defer { objc_sync_exit(Invoice.self) }
            do {
                Invoice.postalCode_ = value
            }
        }
    }

    open var postalCode: String? {
        get {
            return StringValue.optional(self.optionalValue(for: Invoice.postalCode))
        }
        set(value) {
            self.setOptionalValue(for: Invoice.postalCode, to: StringValue.of(optional: value))
        }
    }

    open class var productID: Property {
        get {
            objc_sync_enter(Invoice.self)
            defer { objc_sync_exit(Invoice.self) }
            do {
                return Invoice.productID_
            }
        }
        set(value) {
            objc_sync_enter(Invoice.self)
            defer { objc_sync_exit(Invoice.self) }
            do {
                Invoice.productID_ = value
            }
        }
    }

    open var productID: Int? {
        get {
            return IntValue.optional(self.optionalValue(for: Invoice.productID))
        }
        set(value) {
            self.setOptionalValue(for: Invoice.productID, to: IntValue.of(optional: value))
        }
    }

    open class var productName: Property {
        get {
            objc_sync_enter(Invoice.self)
            defer { objc_sync_exit(Invoice.self) }
            do {
                return Invoice.productName_
            }
        }
        set(value) {
            objc_sync_enter(Invoice.self)
            defer { objc_sync_exit(Invoice.self) }
            do {
                Invoice.productName_ = value
            }
        }
    }

    open var productName: String? {
        get {
            return StringValue.optional(self.optionalValue(for: Invoice.productName))
        }
        set(value) {
            self.setOptionalValue(for: Invoice.productName, to: StringValue.of(optional: value))
        }
    }

    open class var quantity: Property {
        get {
            objc_sync_enter(Invoice.self)
            defer { objc_sync_exit(Invoice.self) }
            do {
                return Invoice.quantity_
            }
        }
        set(value) {
            objc_sync_enter(Invoice.self)
            defer { objc_sync_exit(Invoice.self) }
            do {
                Invoice.quantity_ = value
            }
        }
    }

    open var quantity: Int? {
        get {
            return ShortValue.optional(self.optionalValue(for: Invoice.quantity))
        }
        set(value) {
            self.setOptionalValue(for: Invoice.quantity, to: ShortValue.of(optional: value))
        }
    }

    open class var region: Property {
        get {
            objc_sync_enter(Invoice.self)
            defer { objc_sync_exit(Invoice.self) }
            do {
                return Invoice.region_
            }
        }
        set(value) {
            objc_sync_enter(Invoice.self)
            defer { objc_sync_exit(Invoice.self) }
            do {
                Invoice.region_ = value
            }
        }
    }

    open var region: String? {
        get {
            return StringValue.optional(self.optionalValue(for: Invoice.region))
        }
        set(value) {
            self.setOptionalValue(for: Invoice.region, to: StringValue.of(optional: value))
        }
    }

    open class var requiredDate: Property {
        get {
            objc_sync_enter(Invoice.self)
            defer { objc_sync_exit(Invoice.self) }
            do {
                return Invoice.requiredDate_
            }
        }
        set(value) {
            objc_sync_enter(Invoice.self)
            defer { objc_sync_exit(Invoice.self) }
            do {
                Invoice.requiredDate_ = value
            }
        }
    }

    open var requiredDate: LocalDateTime? {
        get {
            return LocalDateTime.castOptional(self.optionalValue(for: Invoice.requiredDate))
        }
        set(value) {
            self.setOptionalValue(for: Invoice.requiredDate, to: value)
        }
    }

    open class var salesperson: Property {
        get {
            objc_sync_enter(Invoice.self)
            defer { objc_sync_exit(Invoice.self) }
            do {
                return Invoice.salesperson_
            }
        }
        set(value) {
            objc_sync_enter(Invoice.self)
            defer { objc_sync_exit(Invoice.self) }
            do {
                Invoice.salesperson_ = value
            }
        }
    }

    open var salesperson: String? {
        get {
            return StringValue.optional(self.optionalValue(for: Invoice.salesperson))
        }
        set(value) {
            self.setOptionalValue(for: Invoice.salesperson, to: StringValue.of(optional: value))
        }
    }

    open class var shipAddress: Property {
        get {
            objc_sync_enter(Invoice.self)
            defer { objc_sync_exit(Invoice.self) }
            do {
                return Invoice.shipAddress_
            }
        }
        set(value) {
            objc_sync_enter(Invoice.self)
            defer { objc_sync_exit(Invoice.self) }
            do {
                Invoice.shipAddress_ = value
            }
        }
    }

    open var shipAddress: String? {
        get {
            return StringValue.optional(self.optionalValue(for: Invoice.shipAddress))
        }
        set(value) {
            self.setOptionalValue(for: Invoice.shipAddress, to: StringValue.of(optional: value))
        }
    }

    open class var shipCity: Property {
        get {
            objc_sync_enter(Invoice.self)
            defer { objc_sync_exit(Invoice.self) }
            do {
                return Invoice.shipCity_
            }
        }
        set(value) {
            objc_sync_enter(Invoice.self)
            defer { objc_sync_exit(Invoice.self) }
            do {
                Invoice.shipCity_ = value
            }
        }
    }

    open var shipCity: String? {
        get {
            return StringValue.optional(self.optionalValue(for: Invoice.shipCity))
        }
        set(value) {
            self.setOptionalValue(for: Invoice.shipCity, to: StringValue.of(optional: value))
        }
    }

    open class var shipCountry: Property {
        get {
            objc_sync_enter(Invoice.self)
            defer { objc_sync_exit(Invoice.self) }
            do {
                return Invoice.shipCountry_
            }
        }
        set(value) {
            objc_sync_enter(Invoice.self)
            defer { objc_sync_exit(Invoice.self) }
            do {
                Invoice.shipCountry_ = value
            }
        }
    }

    open var shipCountry: String? {
        get {
            return StringValue.optional(self.optionalValue(for: Invoice.shipCountry))
        }
        set(value) {
            self.setOptionalValue(for: Invoice.shipCountry, to: StringValue.of(optional: value))
        }
    }

    open class var shipName: Property {
        get {
            objc_sync_enter(Invoice.self)
            defer { objc_sync_exit(Invoice.self) }
            do {
                return Invoice.shipName_
            }
        }
        set(value) {
            objc_sync_enter(Invoice.self)
            defer { objc_sync_exit(Invoice.self) }
            do {
                Invoice.shipName_ = value
            }
        }
    }

    open var shipName: String? {
        get {
            return StringValue.optional(self.optionalValue(for: Invoice.shipName))
        }
        set(value) {
            self.setOptionalValue(for: Invoice.shipName, to: StringValue.of(optional: value))
        }
    }

    open class var shipPostalCode: Property {
        get {
            objc_sync_enter(Invoice.self)
            defer { objc_sync_exit(Invoice.self) }
            do {
                return Invoice.shipPostalCode_
            }
        }
        set(value) {
            objc_sync_enter(Invoice.self)
            defer { objc_sync_exit(Invoice.self) }
            do {
                Invoice.shipPostalCode_ = value
            }
        }
    }

    open var shipPostalCode: String? {
        get {
            return StringValue.optional(self.optionalValue(for: Invoice.shipPostalCode))
        }
        set(value) {
            self.setOptionalValue(for: Invoice.shipPostalCode, to: StringValue.of(optional: value))
        }
    }

    open class var shipRegion: Property {
        get {
            objc_sync_enter(Invoice.self)
            defer { objc_sync_exit(Invoice.self) }
            do {
                return Invoice.shipRegion_
            }
        }
        set(value) {
            objc_sync_enter(Invoice.self)
            defer { objc_sync_exit(Invoice.self) }
            do {
                Invoice.shipRegion_ = value
            }
        }
    }

    open var shipRegion: String? {
        get {
            return StringValue.optional(self.optionalValue(for: Invoice.shipRegion))
        }
        set(value) {
            self.setOptionalValue(for: Invoice.shipRegion, to: StringValue.of(optional: value))
        }
    }

    open class var shippedDate: Property {
        get {
            objc_sync_enter(Invoice.self)
            defer { objc_sync_exit(Invoice.self) }
            do {
                return Invoice.shippedDate_
            }
        }
        set(value) {
            objc_sync_enter(Invoice.self)
            defer { objc_sync_exit(Invoice.self) }
            do {
                Invoice.shippedDate_ = value
            }
        }
    }

    open var shippedDate: LocalDateTime? {
        get {
            return LocalDateTime.castOptional(self.optionalValue(for: Invoice.shippedDate))
        }
        set(value) {
            self.setOptionalValue(for: Invoice.shippedDate, to: value)
        }
    }

    open class var shipperName: Property {
        get {
            objc_sync_enter(Invoice.self)
            defer { objc_sync_exit(Invoice.self) }
            do {
                return Invoice.shipperName_
            }
        }
        set(value) {
            objc_sync_enter(Invoice.self)
            defer { objc_sync_exit(Invoice.self) }
            do {
                Invoice.shipperName_ = value
            }
        }
    }

    open var shipperName: String? {
        get {
            return StringValue.optional(self.optionalValue(for: Invoice.shipperName))
        }
        set(value) {
            self.setOptionalValue(for: Invoice.shipperName, to: StringValue.of(optional: value))
        }
    }

    open class var unitPrice: Property {
        get {
            objc_sync_enter(Invoice.self)
            defer { objc_sync_exit(Invoice.self) }
            do {
                return Invoice.unitPrice_
            }
        }
        set(value) {
            objc_sync_enter(Invoice.self)
            defer { objc_sync_exit(Invoice.self) }
            do {
                Invoice.unitPrice_ = value
            }
        }
    }

    open var unitPrice: BigDecimal? {
        get {
            return DecimalValue.optional(self.optionalValue(for: Invoice.unitPrice))
        }
        set(value) {
            self.setOptionalValue(for: Invoice.unitPrice, to: DecimalValue.of(optional: value))
        }
    }
}
