// # Proxy Compiler 18.9.4-973a4d-20181128

import Foundation
import SAPOData

open class OrderSubtotal: EntityValue {
    public required init(from decoder: Decoder) throws {
        try super.init(from: decoder)
    }

    private static var orderID_: Property = NorthwindEntitiesMetadata.EntityTypes.orderSubtotal.property(withName: "OrderID")

    private static var subtotal_: Property = NorthwindEntitiesMetadata.EntityTypes.orderSubtotal.property(withName: "Subtotal")

    public init(withDefaults: Bool = true) {
        super.init(withDefaults: withDefaults, type: NorthwindEntitiesMetadata.EntityTypes.orderSubtotal)
    }

    open class func array(from: EntityValueList) -> Array<OrderSubtotal> {
        return ArrayConverter.convert(from.toArray(), Array<OrderSubtotal>())
    }

    open func copy() -> OrderSubtotal {
        return CastRequired<OrderSubtotal>.from(self.copyEntity())
    }

    open override var isProxy: Bool {
        return true
    }

    open class func key(orderID: Int?) -> EntityKey {
        return EntityKey().with(name: "OrderID", value: IntValue.of(optional: orderID))
    }

    open var old: OrderSubtotal {
        return CastRequired<OrderSubtotal>.from(self.oldEntity)
    }

    open class var orderID: Property {
        get {
            objc_sync_enter(OrderSubtotal.self)
            defer { objc_sync_exit(OrderSubtotal.self) }
            do {
                return OrderSubtotal.orderID_
            }
        }
        set(value) {
            objc_sync_enter(OrderSubtotal.self)
            defer { objc_sync_exit(OrderSubtotal.self) }
            do {
                OrderSubtotal.orderID_ = value
            }
        }
    }

    open var orderID: Int? {
        get {
            return IntValue.optional(self.optionalValue(for: OrderSubtotal.orderID))
        }
        set(value) {
            self.setOptionalValue(for: OrderSubtotal.orderID, to: IntValue.of(optional: value))
        }
    }

    open class var subtotal: Property {
        get {
            objc_sync_enter(OrderSubtotal.self)
            defer { objc_sync_exit(OrderSubtotal.self) }
            do {
                return OrderSubtotal.subtotal_
            }
        }
        set(value) {
            objc_sync_enter(OrderSubtotal.self)
            defer { objc_sync_exit(OrderSubtotal.self) }
            do {
                OrderSubtotal.subtotal_ = value
            }
        }
    }

    open var subtotal: BigDecimal? {
        get {
            return DecimalValue.optional(self.optionalValue(for: OrderSubtotal.subtotal))
        }
        set(value) {
            self.setOptionalValue(for: OrderSubtotal.subtotal, to: DecimalValue.of(optional: value))
        }
    }
}
