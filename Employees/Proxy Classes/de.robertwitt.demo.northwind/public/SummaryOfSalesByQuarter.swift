// # Proxy Compiler 18.9.4-973a4d-20181128

import Foundation
import SAPOData

open class SummaryOfSalesByQuarter: EntityValue {
    public required init(from decoder: Decoder) throws {
        try super.init(from: decoder)
    }

    private static var shippedDate_: Property = NorthwindEntitiesMetadata.EntityTypes.summaryOfSalesByQuarter.property(withName: "ShippedDate")

    private static var orderID_: Property = NorthwindEntitiesMetadata.EntityTypes.summaryOfSalesByQuarter.property(withName: "OrderID")

    private static var subtotal_: Property = NorthwindEntitiesMetadata.EntityTypes.summaryOfSalesByQuarter.property(withName: "Subtotal")

    public init(withDefaults: Bool = true) {
        super.init(withDefaults: withDefaults, type: NorthwindEntitiesMetadata.EntityTypes.summaryOfSalesByQuarter)
    }

    open class func array(from: EntityValueList) -> Array<SummaryOfSalesByQuarter> {
        return ArrayConverter.convert(from.toArray(), Array<SummaryOfSalesByQuarter>())
    }

    open func copy() -> SummaryOfSalesByQuarter {
        return CastRequired<SummaryOfSalesByQuarter>.from(self.copyEntity())
    }

    open override var isProxy: Bool {
        return true
    }

    open class func key(orderID: Int?) -> EntityKey {
        return EntityKey().with(name: "OrderID", value: IntValue.of(optional: orderID))
    }

    open var old: SummaryOfSalesByQuarter {
        return CastRequired<SummaryOfSalesByQuarter>.from(self.oldEntity)
    }

    open class var orderID: Property {
        get {
            objc_sync_enter(SummaryOfSalesByQuarter.self)
            defer { objc_sync_exit(SummaryOfSalesByQuarter.self) }
            do {
                return SummaryOfSalesByQuarter.orderID_
            }
        }
        set(value) {
            objc_sync_enter(SummaryOfSalesByQuarter.self)
            defer { objc_sync_exit(SummaryOfSalesByQuarter.self) }
            do {
                SummaryOfSalesByQuarter.orderID_ = value
            }
        }
    }

    open var orderID: Int? {
        get {
            return IntValue.optional(self.optionalValue(for: SummaryOfSalesByQuarter.orderID))
        }
        set(value) {
            self.setOptionalValue(for: SummaryOfSalesByQuarter.orderID, to: IntValue.of(optional: value))
        }
    }

    open class var shippedDate: Property {
        get {
            objc_sync_enter(SummaryOfSalesByQuarter.self)
            defer { objc_sync_exit(SummaryOfSalesByQuarter.self) }
            do {
                return SummaryOfSalesByQuarter.shippedDate_
            }
        }
        set(value) {
            objc_sync_enter(SummaryOfSalesByQuarter.self)
            defer { objc_sync_exit(SummaryOfSalesByQuarter.self) }
            do {
                SummaryOfSalesByQuarter.shippedDate_ = value
            }
        }
    }

    open var shippedDate: LocalDateTime? {
        get {
            return LocalDateTime.castOptional(self.optionalValue(for: SummaryOfSalesByQuarter.shippedDate))
        }
        set(value) {
            self.setOptionalValue(for: SummaryOfSalesByQuarter.shippedDate, to: value)
        }
    }

    open class var subtotal: Property {
        get {
            objc_sync_enter(SummaryOfSalesByQuarter.self)
            defer { objc_sync_exit(SummaryOfSalesByQuarter.self) }
            do {
                return SummaryOfSalesByQuarter.subtotal_
            }
        }
        set(value) {
            objc_sync_enter(SummaryOfSalesByQuarter.self)
            defer { objc_sync_exit(SummaryOfSalesByQuarter.self) }
            do {
                SummaryOfSalesByQuarter.subtotal_ = value
            }
        }
    }

    open var subtotal: BigDecimal? {
        get {
            return DecimalValue.optional(self.optionalValue(for: SummaryOfSalesByQuarter.subtotal))
        }
        set(value) {
            self.setOptionalValue(for: SummaryOfSalesByQuarter.subtotal, to: DecimalValue.of(optional: value))
        }
    }
}
