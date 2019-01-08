// # Proxy Compiler 18.9.4-973a4d-20181128

import Foundation
import SAPOData

open class OrderDetail: EntityValue {
    public required init(from decoder: Decoder) throws {
        try super.init(from: decoder)
    }

    private static var orderID_: Property = NorthwindEntitiesMetadata.EntityTypes.orderDetail.property(withName: "OrderID")

    private static var productID_: Property = NorthwindEntitiesMetadata.EntityTypes.orderDetail.property(withName: "ProductID")

    private static var unitPrice_: Property = NorthwindEntitiesMetadata.EntityTypes.orderDetail.property(withName: "UnitPrice")

    private static var quantity_: Property = NorthwindEntitiesMetadata.EntityTypes.orderDetail.property(withName: "Quantity")

    private static var discount_: Property = NorthwindEntitiesMetadata.EntityTypes.orderDetail.property(withName: "Discount")

    private static var order_: Property = NorthwindEntitiesMetadata.EntityTypes.orderDetail.property(withName: "Order")

    private static var product_: Property = NorthwindEntitiesMetadata.EntityTypes.orderDetail.property(withName: "Product")

    public init(withDefaults: Bool = true) {
        super.init(withDefaults: withDefaults, type: NorthwindEntitiesMetadata.EntityTypes.orderDetail)
    }

    open class func array(from: EntityValueList) -> Array<OrderDetail> {
        return ArrayConverter.convert(from.toArray(), Array<OrderDetail>())
    }

    open func copy() -> OrderDetail {
        return CastRequired<OrderDetail>.from(self.copyEntity())
    }

    open class var discount: Property {
        get {
            objc_sync_enter(OrderDetail.self)
            defer { objc_sync_exit(OrderDetail.self) }
            do {
                return OrderDetail.discount_
            }
        }
        set(value) {
            objc_sync_enter(OrderDetail.self)
            defer { objc_sync_exit(OrderDetail.self) }
            do {
                OrderDetail.discount_ = value
            }
        }
    }

    open var discount: Float? {
        get {
            return FloatValue.optional(self.optionalValue(for: OrderDetail.discount))
        }
        set(value) {
            self.setOptionalValue(for: OrderDetail.discount, to: FloatValue.of(optional: value))
        }
    }

    open override var isProxy: Bool {
        return true
    }

    open class func key(orderID: Int?, productID: Int?) -> EntityKey {
        return EntityKey().with(name: "OrderID", value: IntValue.of(optional: orderID)).with(name: "ProductID", value: IntValue.of(optional: productID))
    }

    open var old: OrderDetail {
        return CastRequired<OrderDetail>.from(self.oldEntity)
    }

    open class var order: Property {
        get {
            objc_sync_enter(OrderDetail.self)
            defer { objc_sync_exit(OrderDetail.self) }
            do {
                return OrderDetail.order_
            }
        }
        set(value) {
            objc_sync_enter(OrderDetail.self)
            defer { objc_sync_exit(OrderDetail.self) }
            do {
                OrderDetail.order_ = value
            }
        }
    }

    open var order: Order? {
        get {
            return CastOptional<Order>.from(self.optionalValue(for: OrderDetail.order))
        }
        set(value) {
            self.setOptionalValue(for: OrderDetail.order, to: value)
        }
    }

    open class var orderID: Property {
        get {
            objc_sync_enter(OrderDetail.self)
            defer { objc_sync_exit(OrderDetail.self) }
            do {
                return OrderDetail.orderID_
            }
        }
        set(value) {
            objc_sync_enter(OrderDetail.self)
            defer { objc_sync_exit(OrderDetail.self) }
            do {
                OrderDetail.orderID_ = value
            }
        }
    }

    open var orderID: Int? {
        get {
            return IntValue.optional(self.optionalValue(for: OrderDetail.orderID))
        }
        set(value) {
            self.setOptionalValue(for: OrderDetail.orderID, to: IntValue.of(optional: value))
        }
    }

    open class var product: Property {
        get {
            objc_sync_enter(OrderDetail.self)
            defer { objc_sync_exit(OrderDetail.self) }
            do {
                return OrderDetail.product_
            }
        }
        set(value) {
            objc_sync_enter(OrderDetail.self)
            defer { objc_sync_exit(OrderDetail.self) }
            do {
                OrderDetail.product_ = value
            }
        }
    }

    open var product: Product? {
        get {
            return CastOptional<Product>.from(self.optionalValue(for: OrderDetail.product))
        }
        set(value) {
            self.setOptionalValue(for: OrderDetail.product, to: value)
        }
    }

    open class var productID: Property {
        get {
            objc_sync_enter(OrderDetail.self)
            defer { objc_sync_exit(OrderDetail.self) }
            do {
                return OrderDetail.productID_
            }
        }
        set(value) {
            objc_sync_enter(OrderDetail.self)
            defer { objc_sync_exit(OrderDetail.self) }
            do {
                OrderDetail.productID_ = value
            }
        }
    }

    open var productID: Int? {
        get {
            return IntValue.optional(self.optionalValue(for: OrderDetail.productID))
        }
        set(value) {
            self.setOptionalValue(for: OrderDetail.productID, to: IntValue.of(optional: value))
        }
    }

    open class var quantity: Property {
        get {
            objc_sync_enter(OrderDetail.self)
            defer { objc_sync_exit(OrderDetail.self) }
            do {
                return OrderDetail.quantity_
            }
        }
        set(value) {
            objc_sync_enter(OrderDetail.self)
            defer { objc_sync_exit(OrderDetail.self) }
            do {
                OrderDetail.quantity_ = value
            }
        }
    }

    open var quantity: Int? {
        get {
            return ShortValue.optional(self.optionalValue(for: OrderDetail.quantity))
        }
        set(value) {
            self.setOptionalValue(for: OrderDetail.quantity, to: ShortValue.of(optional: value))
        }
    }

    open class var unitPrice: Property {
        get {
            objc_sync_enter(OrderDetail.self)
            defer { objc_sync_exit(OrderDetail.self) }
            do {
                return OrderDetail.unitPrice_
            }
        }
        set(value) {
            objc_sync_enter(OrderDetail.self)
            defer { objc_sync_exit(OrderDetail.self) }
            do {
                OrderDetail.unitPrice_ = value
            }
        }
    }

    open var unitPrice: BigDecimal? {
        get {
            return DecimalValue.optional(self.optionalValue(for: OrderDetail.unitPrice))
        }
        set(value) {
            self.setOptionalValue(for: OrderDetail.unitPrice, to: DecimalValue.of(optional: value))
        }
    }
}
