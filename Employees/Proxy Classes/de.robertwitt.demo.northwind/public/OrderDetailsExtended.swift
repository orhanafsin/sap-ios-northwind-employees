// # Proxy Compiler 18.9.4-973a4d-20181128

import Foundation
import SAPOData

open class OrderDetailsExtended: EntityValue {
    public required init(from decoder: Decoder) throws {
        try super.init(from: decoder)
    }

    private static var orderID_: Property = NorthwindEntitiesMetadata.EntityTypes.orderDetailsExtended.property(withName: "OrderID")

    private static var productID_: Property = NorthwindEntitiesMetadata.EntityTypes.orderDetailsExtended.property(withName: "ProductID")

    private static var productName_: Property = NorthwindEntitiesMetadata.EntityTypes.orderDetailsExtended.property(withName: "ProductName")

    private static var unitPrice_: Property = NorthwindEntitiesMetadata.EntityTypes.orderDetailsExtended.property(withName: "UnitPrice")

    private static var quantity_: Property = NorthwindEntitiesMetadata.EntityTypes.orderDetailsExtended.property(withName: "Quantity")

    private static var discount_: Property = NorthwindEntitiesMetadata.EntityTypes.orderDetailsExtended.property(withName: "Discount")

    private static var extendedPrice_: Property = NorthwindEntitiesMetadata.EntityTypes.orderDetailsExtended.property(withName: "ExtendedPrice")

    public init(withDefaults: Bool = true) {
        super.init(withDefaults: withDefaults, type: NorthwindEntitiesMetadata.EntityTypes.orderDetailsExtended)
    }

    open class func array(from: EntityValueList) -> Array<OrderDetailsExtended> {
        return ArrayConverter.convert(from.toArray(), Array<OrderDetailsExtended>())
    }

    open func copy() -> OrderDetailsExtended {
        return CastRequired<OrderDetailsExtended>.from(self.copyEntity())
    }

    open class var discount: Property {
        get {
            objc_sync_enter(OrderDetailsExtended.self)
            defer { objc_sync_exit(OrderDetailsExtended.self) }
            do {
                return OrderDetailsExtended.discount_
            }
        }
        set(value) {
            objc_sync_enter(OrderDetailsExtended.self)
            defer { objc_sync_exit(OrderDetailsExtended.self) }
            do {
                OrderDetailsExtended.discount_ = value
            }
        }
    }

    open var discount: Float? {
        get {
            return FloatValue.optional(self.optionalValue(for: OrderDetailsExtended.discount))
        }
        set(value) {
            self.setOptionalValue(for: OrderDetailsExtended.discount, to: FloatValue.of(optional: value))
        }
    }

    open class var extendedPrice: Property {
        get {
            objc_sync_enter(OrderDetailsExtended.self)
            defer { objc_sync_exit(OrderDetailsExtended.self) }
            do {
                return OrderDetailsExtended.extendedPrice_
            }
        }
        set(value) {
            objc_sync_enter(OrderDetailsExtended.self)
            defer { objc_sync_exit(OrderDetailsExtended.self) }
            do {
                OrderDetailsExtended.extendedPrice_ = value
            }
        }
    }

    open var extendedPrice: BigDecimal? {
        get {
            return DecimalValue.optional(self.optionalValue(for: OrderDetailsExtended.extendedPrice))
        }
        set(value) {
            self.setOptionalValue(for: OrderDetailsExtended.extendedPrice, to: DecimalValue.of(optional: value))
        }
    }

    open override var isProxy: Bool {
        return true
    }

    open class func key(discount: Float?, orderID: Int?, productID: Int?, productName: String?, quantity: Int?, unitPrice: BigDecimal?) -> EntityKey {
        return EntityKey().with(name: "Discount", value: FloatValue.of(optional: discount)).with(name: "OrderID", value: IntValue.of(optional: orderID)).with(name: "ProductID", value: IntValue.of(optional: productID)).with(name: "ProductName", value: StringValue.of(optional: productName)).with(name: "Quantity", value: ShortValue.of(optional: quantity)).with(name: "UnitPrice", value: DecimalValue.of(optional: unitPrice))
    }

    open var old: OrderDetailsExtended {
        return CastRequired<OrderDetailsExtended>.from(self.oldEntity)
    }

    open class var orderID: Property {
        get {
            objc_sync_enter(OrderDetailsExtended.self)
            defer { objc_sync_exit(OrderDetailsExtended.self) }
            do {
                return OrderDetailsExtended.orderID_
            }
        }
        set(value) {
            objc_sync_enter(OrderDetailsExtended.self)
            defer { objc_sync_exit(OrderDetailsExtended.self) }
            do {
                OrderDetailsExtended.orderID_ = value
            }
        }
    }

    open var orderID: Int? {
        get {
            return IntValue.optional(self.optionalValue(for: OrderDetailsExtended.orderID))
        }
        set(value) {
            self.setOptionalValue(for: OrderDetailsExtended.orderID, to: IntValue.of(optional: value))
        }
    }

    open class var productID: Property {
        get {
            objc_sync_enter(OrderDetailsExtended.self)
            defer { objc_sync_exit(OrderDetailsExtended.self) }
            do {
                return OrderDetailsExtended.productID_
            }
        }
        set(value) {
            objc_sync_enter(OrderDetailsExtended.self)
            defer { objc_sync_exit(OrderDetailsExtended.self) }
            do {
                OrderDetailsExtended.productID_ = value
            }
        }
    }

    open var productID: Int? {
        get {
            return IntValue.optional(self.optionalValue(for: OrderDetailsExtended.productID))
        }
        set(value) {
            self.setOptionalValue(for: OrderDetailsExtended.productID, to: IntValue.of(optional: value))
        }
    }

    open class var productName: Property {
        get {
            objc_sync_enter(OrderDetailsExtended.self)
            defer { objc_sync_exit(OrderDetailsExtended.self) }
            do {
                return OrderDetailsExtended.productName_
            }
        }
        set(value) {
            objc_sync_enter(OrderDetailsExtended.self)
            defer { objc_sync_exit(OrderDetailsExtended.self) }
            do {
                OrderDetailsExtended.productName_ = value
            }
        }
    }

    open var productName: String? {
        get {
            return StringValue.optional(self.optionalValue(for: OrderDetailsExtended.productName))
        }
        set(value) {
            self.setOptionalValue(for: OrderDetailsExtended.productName, to: StringValue.of(optional: value))
        }
    }

    open class var quantity: Property {
        get {
            objc_sync_enter(OrderDetailsExtended.self)
            defer { objc_sync_exit(OrderDetailsExtended.self) }
            do {
                return OrderDetailsExtended.quantity_
            }
        }
        set(value) {
            objc_sync_enter(OrderDetailsExtended.self)
            defer { objc_sync_exit(OrderDetailsExtended.self) }
            do {
                OrderDetailsExtended.quantity_ = value
            }
        }
    }

    open var quantity: Int? {
        get {
            return ShortValue.optional(self.optionalValue(for: OrderDetailsExtended.quantity))
        }
        set(value) {
            self.setOptionalValue(for: OrderDetailsExtended.quantity, to: ShortValue.of(optional: value))
        }
    }

    open class var unitPrice: Property {
        get {
            objc_sync_enter(OrderDetailsExtended.self)
            defer { objc_sync_exit(OrderDetailsExtended.self) }
            do {
                return OrderDetailsExtended.unitPrice_
            }
        }
        set(value) {
            objc_sync_enter(OrderDetailsExtended.self)
            defer { objc_sync_exit(OrderDetailsExtended.self) }
            do {
                OrderDetailsExtended.unitPrice_ = value
            }
        }
    }

    open var unitPrice: BigDecimal? {
        get {
            return DecimalValue.optional(self.optionalValue(for: OrderDetailsExtended.unitPrice))
        }
        set(value) {
            self.setOptionalValue(for: OrderDetailsExtended.unitPrice, to: DecimalValue.of(optional: value))
        }
    }
}
