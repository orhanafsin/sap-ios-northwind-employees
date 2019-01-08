// # Proxy Compiler 18.9.4-973a4d-20181128

import Foundation
import SAPOData

open class Order: EntityValue {
    public required init(from decoder: Decoder) throws {
        try super.init(from: decoder)
    }

    private static var orderID_: Property = NorthwindEntitiesMetadata.EntityTypes.order.property(withName: "OrderID")

    private static var customerID_: Property = NorthwindEntitiesMetadata.EntityTypes.order.property(withName: "CustomerID")

    private static var employeeID_: Property = NorthwindEntitiesMetadata.EntityTypes.order.property(withName: "EmployeeID")

    private static var orderDate_: Property = NorthwindEntitiesMetadata.EntityTypes.order.property(withName: "OrderDate")

    private static var requiredDate_: Property = NorthwindEntitiesMetadata.EntityTypes.order.property(withName: "RequiredDate")

    private static var shippedDate_: Property = NorthwindEntitiesMetadata.EntityTypes.order.property(withName: "ShippedDate")

    private static var shipVia_: Property = NorthwindEntitiesMetadata.EntityTypes.order.property(withName: "ShipVia")

    private static var freight_: Property = NorthwindEntitiesMetadata.EntityTypes.order.property(withName: "Freight")

    private static var shipName_: Property = NorthwindEntitiesMetadata.EntityTypes.order.property(withName: "ShipName")

    private static var shipAddress_: Property = NorthwindEntitiesMetadata.EntityTypes.order.property(withName: "ShipAddress")

    private static var shipCity_: Property = NorthwindEntitiesMetadata.EntityTypes.order.property(withName: "ShipCity")

    private static var shipRegion_: Property = NorthwindEntitiesMetadata.EntityTypes.order.property(withName: "ShipRegion")

    private static var shipPostalCode_: Property = NorthwindEntitiesMetadata.EntityTypes.order.property(withName: "ShipPostalCode")

    private static var shipCountry_: Property = NorthwindEntitiesMetadata.EntityTypes.order.property(withName: "ShipCountry")

    private static var customer_: Property = NorthwindEntitiesMetadata.EntityTypes.order.property(withName: "Customer")

    private static var employee_: Property = NorthwindEntitiesMetadata.EntityTypes.order.property(withName: "Employee")

    private static var orderDetails_: Property = NorthwindEntitiesMetadata.EntityTypes.order.property(withName: "Order_Details")

    private static var shipper_: Property = NorthwindEntitiesMetadata.EntityTypes.order.property(withName: "Shipper")

    public init(withDefaults: Bool = true) {
        super.init(withDefaults: withDefaults, type: NorthwindEntitiesMetadata.EntityTypes.order)
    }

    open class func array(from: EntityValueList) -> Array<Order> {
        return ArrayConverter.convert(from.toArray(), Array<Order>())
    }

    open func copy() -> Order {
        return CastRequired<Order>.from(self.copyEntity())
    }

    open class var customer: Property {
        get {
            objc_sync_enter(Order.self)
            defer { objc_sync_exit(Order.self) }
            do {
                return Order.customer_
            }
        }
        set(value) {
            objc_sync_enter(Order.self)
            defer { objc_sync_exit(Order.self) }
            do {
                Order.customer_ = value
            }
        }
    }

    open var customer: Customer? {
        get {
            return CastOptional<Customer>.from(self.optionalValue(for: Order.customer))
        }
        set(value) {
            self.setOptionalValue(for: Order.customer, to: value)
        }
    }

    open class var customerID: Property {
        get {
            objc_sync_enter(Order.self)
            defer { objc_sync_exit(Order.self) }
            do {
                return Order.customerID_
            }
        }
        set(value) {
            objc_sync_enter(Order.self)
            defer { objc_sync_exit(Order.self) }
            do {
                Order.customerID_ = value
            }
        }
    }

    open var customerID: String? {
        get {
            return StringValue.optional(self.optionalValue(for: Order.customerID))
        }
        set(value) {
            self.setOptionalValue(for: Order.customerID, to: StringValue.of(optional: value))
        }
    }

    open class var employee: Property {
        get {
            objc_sync_enter(Order.self)
            defer { objc_sync_exit(Order.self) }
            do {
                return Order.employee_
            }
        }
        set(value) {
            objc_sync_enter(Order.self)
            defer { objc_sync_exit(Order.self) }
            do {
                Order.employee_ = value
            }
        }
    }

    open var employee: Employee? {
        get {
            return CastOptional<Employee>.from(self.optionalValue(for: Order.employee))
        }
        set(value) {
            self.setOptionalValue(for: Order.employee, to: value)
        }
    }

    open class var employeeID: Property {
        get {
            objc_sync_enter(Order.self)
            defer { objc_sync_exit(Order.self) }
            do {
                return Order.employeeID_
            }
        }
        set(value) {
            objc_sync_enter(Order.self)
            defer { objc_sync_exit(Order.self) }
            do {
                Order.employeeID_ = value
            }
        }
    }

    open var employeeID: Int? {
        get {
            return IntValue.optional(self.optionalValue(for: Order.employeeID))
        }
        set(value) {
            self.setOptionalValue(for: Order.employeeID, to: IntValue.of(optional: value))
        }
    }

    open class var freight: Property {
        get {
            objc_sync_enter(Order.self)
            defer { objc_sync_exit(Order.self) }
            do {
                return Order.freight_
            }
        }
        set(value) {
            objc_sync_enter(Order.self)
            defer { objc_sync_exit(Order.self) }
            do {
                Order.freight_ = value
            }
        }
    }

    open var freight: BigDecimal? {
        get {
            return DecimalValue.optional(self.optionalValue(for: Order.freight))
        }
        set(value) {
            self.setOptionalValue(for: Order.freight, to: DecimalValue.of(optional: value))
        }
    }

    open override var isProxy: Bool {
        return true
    }

    open class func key(orderID: Int?) -> EntityKey {
        return EntityKey().with(name: "OrderID", value: IntValue.of(optional: orderID))
    }

    open var old: Order {
        return CastRequired<Order>.from(self.oldEntity)
    }

    open class var orderDate: Property {
        get {
            objc_sync_enter(Order.self)
            defer { objc_sync_exit(Order.self) }
            do {
                return Order.orderDate_
            }
        }
        set(value) {
            objc_sync_enter(Order.self)
            defer { objc_sync_exit(Order.self) }
            do {
                Order.orderDate_ = value
            }
        }
    }

    open var orderDate: LocalDateTime? {
        get {
            return LocalDateTime.castOptional(self.optionalValue(for: Order.orderDate))
        }
        set(value) {
            self.setOptionalValue(for: Order.orderDate, to: value)
        }
    }

    open class var orderDetails: Property {
        get {
            objc_sync_enter(Order.self)
            defer { objc_sync_exit(Order.self) }
            do {
                return Order.orderDetails_
            }
        }
        set(value) {
            objc_sync_enter(Order.self)
            defer { objc_sync_exit(Order.self) }
            do {
                Order.orderDetails_ = value
            }
        }
    }

    open var orderDetails: Array<OrderDetail> {
        get {
            return ArrayConverter.convert(EntityValueList.castRequired(self.requiredValue(for: Order.orderDetails)).toArray(), Array<OrderDetail>())
        }
        set(value) {
            Order.orderDetails.setEntityList(in: self, to: EntityValueList.fromArray(ArrayConverter.convert(value, Array<EntityValue>())))
        }
    }

    open class var orderID: Property {
        get {
            objc_sync_enter(Order.self)
            defer { objc_sync_exit(Order.self) }
            do {
                return Order.orderID_
            }
        }
        set(value) {
            objc_sync_enter(Order.self)
            defer { objc_sync_exit(Order.self) }
            do {
                Order.orderID_ = value
            }
        }
    }

    open var orderID: Int? {
        get {
            return IntValue.optional(self.optionalValue(for: Order.orderID))
        }
        set(value) {
            self.setOptionalValue(for: Order.orderID, to: IntValue.of(optional: value))
        }
    }

    open class var requiredDate: Property {
        get {
            objc_sync_enter(Order.self)
            defer { objc_sync_exit(Order.self) }
            do {
                return Order.requiredDate_
            }
        }
        set(value) {
            objc_sync_enter(Order.self)
            defer { objc_sync_exit(Order.self) }
            do {
                Order.requiredDate_ = value
            }
        }
    }

    open var requiredDate: LocalDateTime? {
        get {
            return LocalDateTime.castOptional(self.optionalValue(for: Order.requiredDate))
        }
        set(value) {
            self.setOptionalValue(for: Order.requiredDate, to: value)
        }
    }

    open class var shipAddress: Property {
        get {
            objc_sync_enter(Order.self)
            defer { objc_sync_exit(Order.self) }
            do {
                return Order.shipAddress_
            }
        }
        set(value) {
            objc_sync_enter(Order.self)
            defer { objc_sync_exit(Order.self) }
            do {
                Order.shipAddress_ = value
            }
        }
    }

    open var shipAddress: String? {
        get {
            return StringValue.optional(self.optionalValue(for: Order.shipAddress))
        }
        set(value) {
            self.setOptionalValue(for: Order.shipAddress, to: StringValue.of(optional: value))
        }
    }

    open class var shipCity: Property {
        get {
            objc_sync_enter(Order.self)
            defer { objc_sync_exit(Order.self) }
            do {
                return Order.shipCity_
            }
        }
        set(value) {
            objc_sync_enter(Order.self)
            defer { objc_sync_exit(Order.self) }
            do {
                Order.shipCity_ = value
            }
        }
    }

    open var shipCity: String? {
        get {
            return StringValue.optional(self.optionalValue(for: Order.shipCity))
        }
        set(value) {
            self.setOptionalValue(for: Order.shipCity, to: StringValue.of(optional: value))
        }
    }

    open class var shipCountry: Property {
        get {
            objc_sync_enter(Order.self)
            defer { objc_sync_exit(Order.self) }
            do {
                return Order.shipCountry_
            }
        }
        set(value) {
            objc_sync_enter(Order.self)
            defer { objc_sync_exit(Order.self) }
            do {
                Order.shipCountry_ = value
            }
        }
    }

    open var shipCountry: String? {
        get {
            return StringValue.optional(self.optionalValue(for: Order.shipCountry))
        }
        set(value) {
            self.setOptionalValue(for: Order.shipCountry, to: StringValue.of(optional: value))
        }
    }

    open class var shipName: Property {
        get {
            objc_sync_enter(Order.self)
            defer { objc_sync_exit(Order.self) }
            do {
                return Order.shipName_
            }
        }
        set(value) {
            objc_sync_enter(Order.self)
            defer { objc_sync_exit(Order.self) }
            do {
                Order.shipName_ = value
            }
        }
    }

    open var shipName: String? {
        get {
            return StringValue.optional(self.optionalValue(for: Order.shipName))
        }
        set(value) {
            self.setOptionalValue(for: Order.shipName, to: StringValue.of(optional: value))
        }
    }

    open class var shipPostalCode: Property {
        get {
            objc_sync_enter(Order.self)
            defer { objc_sync_exit(Order.self) }
            do {
                return Order.shipPostalCode_
            }
        }
        set(value) {
            objc_sync_enter(Order.self)
            defer { objc_sync_exit(Order.self) }
            do {
                Order.shipPostalCode_ = value
            }
        }
    }

    open var shipPostalCode: String? {
        get {
            return StringValue.optional(self.optionalValue(for: Order.shipPostalCode))
        }
        set(value) {
            self.setOptionalValue(for: Order.shipPostalCode, to: StringValue.of(optional: value))
        }
    }

    open class var shipRegion: Property {
        get {
            objc_sync_enter(Order.self)
            defer { objc_sync_exit(Order.self) }
            do {
                return Order.shipRegion_
            }
        }
        set(value) {
            objc_sync_enter(Order.self)
            defer { objc_sync_exit(Order.self) }
            do {
                Order.shipRegion_ = value
            }
        }
    }

    open var shipRegion: String? {
        get {
            return StringValue.optional(self.optionalValue(for: Order.shipRegion))
        }
        set(value) {
            self.setOptionalValue(for: Order.shipRegion, to: StringValue.of(optional: value))
        }
    }

    open class var shipVia: Property {
        get {
            objc_sync_enter(Order.self)
            defer { objc_sync_exit(Order.self) }
            do {
                return Order.shipVia_
            }
        }
        set(value) {
            objc_sync_enter(Order.self)
            defer { objc_sync_exit(Order.self) }
            do {
                Order.shipVia_ = value
            }
        }
    }

    open var shipVia: Int? {
        get {
            return IntValue.optional(self.optionalValue(for: Order.shipVia))
        }
        set(value) {
            self.setOptionalValue(for: Order.shipVia, to: IntValue.of(optional: value))
        }
    }

    open class var shippedDate: Property {
        get {
            objc_sync_enter(Order.self)
            defer { objc_sync_exit(Order.self) }
            do {
                return Order.shippedDate_
            }
        }
        set(value) {
            objc_sync_enter(Order.self)
            defer { objc_sync_exit(Order.self) }
            do {
                Order.shippedDate_ = value
            }
        }
    }

    open var shippedDate: LocalDateTime? {
        get {
            return LocalDateTime.castOptional(self.optionalValue(for: Order.shippedDate))
        }
        set(value) {
            self.setOptionalValue(for: Order.shippedDate, to: value)
        }
    }

    open class var shipper: Property {
        get {
            objc_sync_enter(Order.self)
            defer { objc_sync_exit(Order.self) }
            do {
                return Order.shipper_
            }
        }
        set(value) {
            objc_sync_enter(Order.self)
            defer { objc_sync_exit(Order.self) }
            do {
                Order.shipper_ = value
            }
        }
    }

    open var shipper: Shipper? {
        get {
            return CastOptional<Shipper>.from(self.optionalValue(for: Order.shipper))
        }
        set(value) {
            self.setOptionalValue(for: Order.shipper, to: value)
        }
    }
}
