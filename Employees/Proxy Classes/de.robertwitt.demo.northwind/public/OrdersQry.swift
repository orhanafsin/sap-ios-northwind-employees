// # Proxy Compiler 18.9.4-973a4d-20181128

import Foundation
import SAPOData

open class OrdersQry: EntityValue {
    public required init(from decoder: Decoder) throws {
        try super.init(from: decoder)
    }

    private static var orderID_: Property = NorthwindEntitiesMetadata.EntityTypes.ordersQry.property(withName: "OrderID")

    private static var customerID_: Property = NorthwindEntitiesMetadata.EntityTypes.ordersQry.property(withName: "CustomerID")

    private static var employeeID_: Property = NorthwindEntitiesMetadata.EntityTypes.ordersQry.property(withName: "EmployeeID")

    private static var orderDate_: Property = NorthwindEntitiesMetadata.EntityTypes.ordersQry.property(withName: "OrderDate")

    private static var requiredDate_: Property = NorthwindEntitiesMetadata.EntityTypes.ordersQry.property(withName: "RequiredDate")

    private static var shippedDate_: Property = NorthwindEntitiesMetadata.EntityTypes.ordersQry.property(withName: "ShippedDate")

    private static var shipVia_: Property = NorthwindEntitiesMetadata.EntityTypes.ordersQry.property(withName: "ShipVia")

    private static var freight_: Property = NorthwindEntitiesMetadata.EntityTypes.ordersQry.property(withName: "Freight")

    private static var shipName_: Property = NorthwindEntitiesMetadata.EntityTypes.ordersQry.property(withName: "ShipName")

    private static var shipAddress_: Property = NorthwindEntitiesMetadata.EntityTypes.ordersQry.property(withName: "ShipAddress")

    private static var shipCity_: Property = NorthwindEntitiesMetadata.EntityTypes.ordersQry.property(withName: "ShipCity")

    private static var shipRegion_: Property = NorthwindEntitiesMetadata.EntityTypes.ordersQry.property(withName: "ShipRegion")

    private static var shipPostalCode_: Property = NorthwindEntitiesMetadata.EntityTypes.ordersQry.property(withName: "ShipPostalCode")

    private static var shipCountry_: Property = NorthwindEntitiesMetadata.EntityTypes.ordersQry.property(withName: "ShipCountry")

    private static var companyName_: Property = NorthwindEntitiesMetadata.EntityTypes.ordersQry.property(withName: "CompanyName")

    private static var address_: Property = NorthwindEntitiesMetadata.EntityTypes.ordersQry.property(withName: "Address")

    private static var city_: Property = NorthwindEntitiesMetadata.EntityTypes.ordersQry.property(withName: "City")

    private static var region_: Property = NorthwindEntitiesMetadata.EntityTypes.ordersQry.property(withName: "Region")

    private static var postalCode_: Property = NorthwindEntitiesMetadata.EntityTypes.ordersQry.property(withName: "PostalCode")

    private static var country_: Property = NorthwindEntitiesMetadata.EntityTypes.ordersQry.property(withName: "Country")

    public init(withDefaults: Bool = true) {
        super.init(withDefaults: withDefaults, type: NorthwindEntitiesMetadata.EntityTypes.ordersQry)
    }

    open class var address: Property {
        get {
            objc_sync_enter(OrdersQry.self)
            defer { objc_sync_exit(OrdersQry.self) }
            do {
                return OrdersQry.address_
            }
        }
        set(value) {
            objc_sync_enter(OrdersQry.self)
            defer { objc_sync_exit(OrdersQry.self) }
            do {
                OrdersQry.address_ = value
            }
        }
    }

    open var address: String? {
        get {
            return StringValue.optional(self.optionalValue(for: OrdersQry.address))
        }
        set(value) {
            self.setOptionalValue(for: OrdersQry.address, to: StringValue.of(optional: value))
        }
    }

    open class func array(from: EntityValueList) -> Array<OrdersQry> {
        return ArrayConverter.convert(from.toArray(), Array<OrdersQry>())
    }

    open class var city: Property {
        get {
            objc_sync_enter(OrdersQry.self)
            defer { objc_sync_exit(OrdersQry.self) }
            do {
                return OrdersQry.city_
            }
        }
        set(value) {
            objc_sync_enter(OrdersQry.self)
            defer { objc_sync_exit(OrdersQry.self) }
            do {
                OrdersQry.city_ = value
            }
        }
    }

    open var city: String? {
        get {
            return StringValue.optional(self.optionalValue(for: OrdersQry.city))
        }
        set(value) {
            self.setOptionalValue(for: OrdersQry.city, to: StringValue.of(optional: value))
        }
    }

    open class var companyName: Property {
        get {
            objc_sync_enter(OrdersQry.self)
            defer { objc_sync_exit(OrdersQry.self) }
            do {
                return OrdersQry.companyName_
            }
        }
        set(value) {
            objc_sync_enter(OrdersQry.self)
            defer { objc_sync_exit(OrdersQry.self) }
            do {
                OrdersQry.companyName_ = value
            }
        }
    }

    open var companyName: String? {
        get {
            return StringValue.optional(self.optionalValue(for: OrdersQry.companyName))
        }
        set(value) {
            self.setOptionalValue(for: OrdersQry.companyName, to: StringValue.of(optional: value))
        }
    }

    open func copy() -> OrdersQry {
        return CastRequired<OrdersQry>.from(self.copyEntity())
    }

    open class var country: Property {
        get {
            objc_sync_enter(OrdersQry.self)
            defer { objc_sync_exit(OrdersQry.self) }
            do {
                return OrdersQry.country_
            }
        }
        set(value) {
            objc_sync_enter(OrdersQry.self)
            defer { objc_sync_exit(OrdersQry.self) }
            do {
                OrdersQry.country_ = value
            }
        }
    }

    open var country: String? {
        get {
            return StringValue.optional(self.optionalValue(for: OrdersQry.country))
        }
        set(value) {
            self.setOptionalValue(for: OrdersQry.country, to: StringValue.of(optional: value))
        }
    }

    open class var customerID: Property {
        get {
            objc_sync_enter(OrdersQry.self)
            defer { objc_sync_exit(OrdersQry.self) }
            do {
                return OrdersQry.customerID_
            }
        }
        set(value) {
            objc_sync_enter(OrdersQry.self)
            defer { objc_sync_exit(OrdersQry.self) }
            do {
                OrdersQry.customerID_ = value
            }
        }
    }

    open var customerID: String? {
        get {
            return StringValue.optional(self.optionalValue(for: OrdersQry.customerID))
        }
        set(value) {
            self.setOptionalValue(for: OrdersQry.customerID, to: StringValue.of(optional: value))
        }
    }

    open class var employeeID: Property {
        get {
            objc_sync_enter(OrdersQry.self)
            defer { objc_sync_exit(OrdersQry.self) }
            do {
                return OrdersQry.employeeID_
            }
        }
        set(value) {
            objc_sync_enter(OrdersQry.self)
            defer { objc_sync_exit(OrdersQry.self) }
            do {
                OrdersQry.employeeID_ = value
            }
        }
    }

    open var employeeID: Int? {
        get {
            return IntValue.optional(self.optionalValue(for: OrdersQry.employeeID))
        }
        set(value) {
            self.setOptionalValue(for: OrdersQry.employeeID, to: IntValue.of(optional: value))
        }
    }

    open class var freight: Property {
        get {
            objc_sync_enter(OrdersQry.self)
            defer { objc_sync_exit(OrdersQry.self) }
            do {
                return OrdersQry.freight_
            }
        }
        set(value) {
            objc_sync_enter(OrdersQry.self)
            defer { objc_sync_exit(OrdersQry.self) }
            do {
                OrdersQry.freight_ = value
            }
        }
    }

    open var freight: BigDecimal? {
        get {
            return DecimalValue.optional(self.optionalValue(for: OrdersQry.freight))
        }
        set(value) {
            self.setOptionalValue(for: OrdersQry.freight, to: DecimalValue.of(optional: value))
        }
    }

    open override var isProxy: Bool {
        return true
    }

    open class func key(companyName: String?, orderID: Int?) -> EntityKey {
        return EntityKey().with(name: "CompanyName", value: StringValue.of(optional: companyName)).with(name: "OrderID", value: IntValue.of(optional: orderID))
    }

    open var old: OrdersQry {
        return CastRequired<OrdersQry>.from(self.oldEntity)
    }

    open class var orderDate: Property {
        get {
            objc_sync_enter(OrdersQry.self)
            defer { objc_sync_exit(OrdersQry.self) }
            do {
                return OrdersQry.orderDate_
            }
        }
        set(value) {
            objc_sync_enter(OrdersQry.self)
            defer { objc_sync_exit(OrdersQry.self) }
            do {
                OrdersQry.orderDate_ = value
            }
        }
    }

    open var orderDate: LocalDateTime? {
        get {
            return LocalDateTime.castOptional(self.optionalValue(for: OrdersQry.orderDate))
        }
        set(value) {
            self.setOptionalValue(for: OrdersQry.orderDate, to: value)
        }
    }

    open class var orderID: Property {
        get {
            objc_sync_enter(OrdersQry.self)
            defer { objc_sync_exit(OrdersQry.self) }
            do {
                return OrdersQry.orderID_
            }
        }
        set(value) {
            objc_sync_enter(OrdersQry.self)
            defer { objc_sync_exit(OrdersQry.self) }
            do {
                OrdersQry.orderID_ = value
            }
        }
    }

    open var orderID: Int? {
        get {
            return IntValue.optional(self.optionalValue(for: OrdersQry.orderID))
        }
        set(value) {
            self.setOptionalValue(for: OrdersQry.orderID, to: IntValue.of(optional: value))
        }
    }

    open class var postalCode: Property {
        get {
            objc_sync_enter(OrdersQry.self)
            defer { objc_sync_exit(OrdersQry.self) }
            do {
                return OrdersQry.postalCode_
            }
        }
        set(value) {
            objc_sync_enter(OrdersQry.self)
            defer { objc_sync_exit(OrdersQry.self) }
            do {
                OrdersQry.postalCode_ = value
            }
        }
    }

    open var postalCode: String? {
        get {
            return StringValue.optional(self.optionalValue(for: OrdersQry.postalCode))
        }
        set(value) {
            self.setOptionalValue(for: OrdersQry.postalCode, to: StringValue.of(optional: value))
        }
    }

    open class var region: Property {
        get {
            objc_sync_enter(OrdersQry.self)
            defer { objc_sync_exit(OrdersQry.self) }
            do {
                return OrdersQry.region_
            }
        }
        set(value) {
            objc_sync_enter(OrdersQry.self)
            defer { objc_sync_exit(OrdersQry.self) }
            do {
                OrdersQry.region_ = value
            }
        }
    }

    open var region: String? {
        get {
            return StringValue.optional(self.optionalValue(for: OrdersQry.region))
        }
        set(value) {
            self.setOptionalValue(for: OrdersQry.region, to: StringValue.of(optional: value))
        }
    }

    open class var requiredDate: Property {
        get {
            objc_sync_enter(OrdersQry.self)
            defer { objc_sync_exit(OrdersQry.self) }
            do {
                return OrdersQry.requiredDate_
            }
        }
        set(value) {
            objc_sync_enter(OrdersQry.self)
            defer { objc_sync_exit(OrdersQry.self) }
            do {
                OrdersQry.requiredDate_ = value
            }
        }
    }

    open var requiredDate: LocalDateTime? {
        get {
            return LocalDateTime.castOptional(self.optionalValue(for: OrdersQry.requiredDate))
        }
        set(value) {
            self.setOptionalValue(for: OrdersQry.requiredDate, to: value)
        }
    }

    open class var shipAddress: Property {
        get {
            objc_sync_enter(OrdersQry.self)
            defer { objc_sync_exit(OrdersQry.self) }
            do {
                return OrdersQry.shipAddress_
            }
        }
        set(value) {
            objc_sync_enter(OrdersQry.self)
            defer { objc_sync_exit(OrdersQry.self) }
            do {
                OrdersQry.shipAddress_ = value
            }
        }
    }

    open var shipAddress: String? {
        get {
            return StringValue.optional(self.optionalValue(for: OrdersQry.shipAddress))
        }
        set(value) {
            self.setOptionalValue(for: OrdersQry.shipAddress, to: StringValue.of(optional: value))
        }
    }

    open class var shipCity: Property {
        get {
            objc_sync_enter(OrdersQry.self)
            defer { objc_sync_exit(OrdersQry.self) }
            do {
                return OrdersQry.shipCity_
            }
        }
        set(value) {
            objc_sync_enter(OrdersQry.self)
            defer { objc_sync_exit(OrdersQry.self) }
            do {
                OrdersQry.shipCity_ = value
            }
        }
    }

    open var shipCity: String? {
        get {
            return StringValue.optional(self.optionalValue(for: OrdersQry.shipCity))
        }
        set(value) {
            self.setOptionalValue(for: OrdersQry.shipCity, to: StringValue.of(optional: value))
        }
    }

    open class var shipCountry: Property {
        get {
            objc_sync_enter(OrdersQry.self)
            defer { objc_sync_exit(OrdersQry.self) }
            do {
                return OrdersQry.shipCountry_
            }
        }
        set(value) {
            objc_sync_enter(OrdersQry.self)
            defer { objc_sync_exit(OrdersQry.self) }
            do {
                OrdersQry.shipCountry_ = value
            }
        }
    }

    open var shipCountry: String? {
        get {
            return StringValue.optional(self.optionalValue(for: OrdersQry.shipCountry))
        }
        set(value) {
            self.setOptionalValue(for: OrdersQry.shipCountry, to: StringValue.of(optional: value))
        }
    }

    open class var shipName: Property {
        get {
            objc_sync_enter(OrdersQry.self)
            defer { objc_sync_exit(OrdersQry.self) }
            do {
                return OrdersQry.shipName_
            }
        }
        set(value) {
            objc_sync_enter(OrdersQry.self)
            defer { objc_sync_exit(OrdersQry.self) }
            do {
                OrdersQry.shipName_ = value
            }
        }
    }

    open var shipName: String? {
        get {
            return StringValue.optional(self.optionalValue(for: OrdersQry.shipName))
        }
        set(value) {
            self.setOptionalValue(for: OrdersQry.shipName, to: StringValue.of(optional: value))
        }
    }

    open class var shipPostalCode: Property {
        get {
            objc_sync_enter(OrdersQry.self)
            defer { objc_sync_exit(OrdersQry.self) }
            do {
                return OrdersQry.shipPostalCode_
            }
        }
        set(value) {
            objc_sync_enter(OrdersQry.self)
            defer { objc_sync_exit(OrdersQry.self) }
            do {
                OrdersQry.shipPostalCode_ = value
            }
        }
    }

    open var shipPostalCode: String? {
        get {
            return StringValue.optional(self.optionalValue(for: OrdersQry.shipPostalCode))
        }
        set(value) {
            self.setOptionalValue(for: OrdersQry.shipPostalCode, to: StringValue.of(optional: value))
        }
    }

    open class var shipRegion: Property {
        get {
            objc_sync_enter(OrdersQry.self)
            defer { objc_sync_exit(OrdersQry.self) }
            do {
                return OrdersQry.shipRegion_
            }
        }
        set(value) {
            objc_sync_enter(OrdersQry.self)
            defer { objc_sync_exit(OrdersQry.self) }
            do {
                OrdersQry.shipRegion_ = value
            }
        }
    }

    open var shipRegion: String? {
        get {
            return StringValue.optional(self.optionalValue(for: OrdersQry.shipRegion))
        }
        set(value) {
            self.setOptionalValue(for: OrdersQry.shipRegion, to: StringValue.of(optional: value))
        }
    }

    open class var shipVia: Property {
        get {
            objc_sync_enter(OrdersQry.self)
            defer { objc_sync_exit(OrdersQry.self) }
            do {
                return OrdersQry.shipVia_
            }
        }
        set(value) {
            objc_sync_enter(OrdersQry.self)
            defer { objc_sync_exit(OrdersQry.self) }
            do {
                OrdersQry.shipVia_ = value
            }
        }
    }

    open var shipVia: Int? {
        get {
            return IntValue.optional(self.optionalValue(for: OrdersQry.shipVia))
        }
        set(value) {
            self.setOptionalValue(for: OrdersQry.shipVia, to: IntValue.of(optional: value))
        }
    }

    open class var shippedDate: Property {
        get {
            objc_sync_enter(OrdersQry.self)
            defer { objc_sync_exit(OrdersQry.self) }
            do {
                return OrdersQry.shippedDate_
            }
        }
        set(value) {
            objc_sync_enter(OrdersQry.self)
            defer { objc_sync_exit(OrdersQry.self) }
            do {
                OrdersQry.shippedDate_ = value
            }
        }
    }

    open var shippedDate: LocalDateTime? {
        get {
            return LocalDateTime.castOptional(self.optionalValue(for: OrdersQry.shippedDate))
        }
        set(value) {
            self.setOptionalValue(for: OrdersQry.shippedDate, to: value)
        }
    }
}
